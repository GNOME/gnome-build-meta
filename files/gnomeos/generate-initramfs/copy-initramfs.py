#!/usr/bin/python3

import argparse
import elftools.elf.elffile
import lzma
import os.path
import shutil
import subprocess
import sys
import io
import zstd

class ParseError(RuntimeError):
    pass

def parse_systemd(file):
    content = file.read()
    data = {}
    def set_value(section, key, value):
        if key not in data[section]:
            data[section][key] = []
        if value == "":
            data[section][key] = []
        else:
            data[section][key].append(value)

    current_section = None
    current_key = None
    current_value = None
    for line in content.splitlines():
        if len(line) == 0:
            if current_key is not None:
                set_value(current_section, current_key, current_value)
                current_value = current_key = None
        elif line[0] == "#" or line[0] == ";":
            pass
        elif line[0] == "[":
            if line[-1] != "]":
                raise ParseError("Unexpected line")
            current_section = line[1:-1]
            data[current_section] = {}
        elif current_key is not None:
            if line.endswith("\\"):
                current_value.append(line[:-1] + " ")
            else:
                current_value.append(line)
                set_value(current_section, current_key, current_value)
                current_value = None
        else:
            s = line.split("=", 1)
            if len(s) != 2:
                raise ParseError("Unexpected line")
            if s[1].endswith("\\"):
                current_value = s[1][:-1] + " "
                current_key = s[0]
            else:
                set_value(current_section, s[0], s[1])

    return data

def get_dependencies_systemd(file, unit_resolver):
    conf = parse_systemd(file)
    units = set()
    for prop in [('Unit', 'Wants'),
                 ('Unit', 'Requires'),
                 ('Unit', 'Upholds'),
                 ('Unit', 'BindsTo')]:
        for unit in ' '.join(conf.get(prop[0], {}).get(prop[1], [])).split(' '):
            if len(unit) != 0:
                units.add(unit)
    for unit in units:
        if '%' not in unit:
            yield unit_resolver.resolve_unit(unit)
    for prop in [('Service', 'ExecStart'),
                 ('Service', 'ExecStartPost'),
                 ('Service', 'ExecStartPre'),
                 ('Service', 'ExecStop'),
                 ('Service', 'ExecStopPost'),
                 ('Service', 'ExecStopPre'),
                 ]:
        value = ' '.join(conf.get(prop[0], {}).get(prop[1], []))
        if value == '':
            continue
        if value.startswith('-') or value.startswith('@'):
            value = value[1:]
        values = value.split(' ')
        exe = values[0]
        yield unit_resolver.resolve_exe(exe)

def get_dependencies_interp(elffile):
    for seg in elffile.iter_segments(type='PT_INTERP'):
        yield seg.get_interp_name()

def get_dependencies_libs(elffile, library_resolver):
    dynamic = elffile.get_section_by_name('.dynamic')
    if dynamic is None:
        return
    if not isinstance(dynamic, elftools.elf.dynamic.DynamicSection):
        return
    for tag in dynamic.iter_tags(type='DT_NEEDED'):
        yield library_resolver.resolve_library(tag.needed)

def get_dependencies_modules(elffile, module_resolver):
    modinfo = elffile.get_section_by_name('.modinfo')
    if modinfo is None:
        return
    for entry in modinfo.data().split(b'\0'):
        if len(entry) == 0:
            continue
        data = entry.split(b'=', 1)
        if data[0] == b'depends':
            if len(data[1]) != 0:
                for dep in data[1].split(b','):
                    yield module_resolver.resolve_module(dep)
        elif data[0] == b'firmware':
            for dep in data[1].split(b','):
                yield module_resolver.resolve_firmware(dep)

def get_dependencies_elf(file, module_resolver, library_resolver):
    elf = elftools.elf.elffile.ELFFile(file)
    yield from get_dependencies_libs(elf, library_resolver)
    yield from get_dependencies_modules(elf, module_resolver)
    yield from get_dependencies_interp(elf)

def get_dependencies_xz(file, module_resolver, library_resolver):
    yield from get_dependencies_file(lzma.open(file, format=lzma.FORMAT_XZ), module_resolver, library_resolver)

def get_dependencies_zstd(file, module_resolver, library_resolver):
    yield from get_dependencies_file(io.BytesIO(zstd.decompress(file.read())), module_resolver, library_resolver)

def get_dependencies_file(file, module_resolver, library_resolver):
    data = file.read(5)
    file.seek(0, 0)
    if data[:4] == b'\x7fELF':
        yield from get_dependencies_elf(file, module_resolver, library_resolver)
    elif data[:5] == b'\xfd7zXZ':
        yield from get_dependencies_xz(file, module_resolver, library_resolver)
    elif data[:4] == b'\x28\xb5\x2f\xfd':
        yield from get_dependencies_zstd(file, module_resolver, library_resolver)

def get_dependencies(path, module_resolver, library_resolver, unit_resolver):
    base, ext = os.path.splitext(path)
    if os.path.islink(path):
        link = os.readlink(path)
        if not os.path.isabs(link):
            dirname = os.path.realpath(os.path.dirname(path))
            link = os.path.normpath(os.path.join(dirname, link))
        yield link
    elif os.path.isdir(path):
        pass
    elif ext in ['.service',
                 '.socket',
                 '.mount',
                 '.automount',
                 '.path',
                 '.slice',
                 '.target',
                 '.timer']:
        with open(path, "r") as f:
            yield from get_dependencies_systemd(f, unit_resolver)
    else:
        with open(path, "rb") as f:
            yield from get_dependencies_file(f, module_resolver, library_resolver)

class LibraryResolver:
    def __init__(self, root_path, libdirs):
        self.root_path = root_path
        self.libdirs = libdirs

    def resolve_library(self, name):
        for libdir in self.libdirs:
            path = os.path.join(self.root_path, os.path.relpath(libdir, '/'), name)
            if os.path.exists(path):
                return path
        return os.path.join(self.root_path, os.path.relpath(self.libdirs[0], '/'), name)

class SystemdResolver:
    def __init__(self, root_path):
        self.root_path = root_path

    def resolve_unit(self, name):
        path = os.path.join(self.root_path, 'usr/lib/systemd/system', name)
        if os.path.exists(path):
            return path
        if '@' in name:
            base, ext = os.path.splitext(path)
            split = base.split('@')
            template_path = os.path.join(self.root_path, 'usr/lib/systemd/system', f'{split[0]}@{ext}')
            if os.path.exists(template_path):
                return template_path
        return path

    def resolve_exe(self, name):
        if os.path.isabs(name):
            return os.path.join(self.root_path, os.path.relpath(name, '/'))
        else:
            return os.path.join(self.root_path, 'usr/bin', name)

class ModuleResolver:
    def __init__(self, root_path, version):
        self.root_path = root_path
        self.version = version

    def resolve_module(self, name):
        return subprocess.check_output(['modinfo', '-k', self.version, '-b', os.path.join(self.root_path, 'usr'), '-0', '-n', name.decode('utf-8')], encoding='utf-8').rstrip('\0')

    def resolve_firmware(self, path):
        path = os.path.join(self.root_path, 'usr', 'lib', 'firmware', path.decode('utf-8'))
        compressed_path = path + ".xz"
        if os.path.exists(compressed_path):
            return compressed_path
        if os.path.exists(path):
            return path
        return compressed_path

def reallinkpath(path):
    dirname = os.path.dirname(path)
    dirname = os.path.realpath(dirname)
    return os.path.join(dirname, os.path.basename(path))

def copy(source, target, targetroot):
    target = reallinkpath(target)
    dest = os.path.normpath(os.path.join(targetroot, os.path.relpath(target, '/')))
    if os.path.lexists(dest):
        print(f"Already there: {dest}")
        return
    #os.makedirs(os.path.dirname(dest), exist_ok=True)
    if source is None:
        os.mkdir(dest)
    elif os.path.islink(source):
        os.symlink(os.readlink(source), dest)
    elif os.path.isdir(source):
        os.mkdir(dest)
        #os.makedirs(dest, exist_ok=True)
        shutil.copystat(source, dest)
    else:
        shutil.copy2(source, dest)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--libdir', action='append')
    parser.add_argument('targetroot')
    parser.add_argument('kernelver')
    parser.add_argument('source')
    parser.add_argument('dest')
    args = parser.parse_args()

    queue = [(args.source, args.dest)]

    found = set()

    module_resolver = ModuleResolver('/', args.kernelver)
    library_resolver = LibraryResolver('/', args.libdir)
    systemd_resolver = SystemdResolver('/')

    dependencies = {}
    source_of = {}

    while len(queue) > 0:
        source, target = queue.pop()
        if target in dependencies:
            continue
        dependencies[target] = set()
        if not os.path.lexists(source):
            print(f"Not found {source}")
            continue
        source_of[target] = source

        for dep in get_dependencies(source, module_resolver, library_resolver, systemd_resolver):
            dependencies[target].add(dep)
            queue.append((dep, dep))
        if source == target:
            dependencies[target].add(os.path.dirname(target))
            queue.append((os.path.dirname(target), os.path.dirname(target)))
        else:
            d = os.path.dirname(target)
            prev = target
            while d != '/' and not os.path.lexists(d):
                dependencies[prev].add(d)
                dependencies[d] = set()
                if d not in source_of:
                    source_of[d] = None
                prev = d
                d = os.path.dirname(d)

            dependencies[prev].add(d)
            queue.append((d, d))

    processed = set()
    def process(target):
        if target in processed:
            return
        processed.add(target)
        if target not in source_of:
            return
        for dep in dependencies.get(target, []):
            process(dep)
        source = source_of[target]
        print(f"Copying {source} => {target}")
        copy(source, target, args.targetroot)

    process(args.dest)

if __name__ == '__main__':
    main()
