#!/usr/bin/python3
# This saves extended attributes and permissions that BuildStream would lose

import argparse
import os
import stat
import re
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('sysroot')
parser.add_argument('backup')
parser.add_argument('roots', nargs='+')
args = parser.parse_args()

def escape_bytes(bs):
    ret = []
    for b in bs:
        ret += f'\\x{b:02x}'
    return ''.join(ret)

def escape_char(m):
    value = ord(m.group(0))
    if value < (1<<7):
        return f'\\x{value:02x}'
    elif value < (1 << 15):
        return f'\\u{value:04x}'
    else:
        return f'\\U{value:08x}'

def escape_value(value):
    return re.sub(r'[^0-9a-zA-Z._/-]', escape_char, value)

def retrieve_one(sysroot, root, rel):
    configs = []
    mode = None
    attributes = {}
    p = os.path.join(root, rel)
    tmpfiles_path = os.path.join('/', os.path.relpath(p, sysroot))
    st = os.lstat(p)
    if stat.S_ISREG(st.st_mode):
        if stat.S_IMODE(st.st_mode) != 0o755 and stat.S_IMODE(st.st_mode) != 0o644:
            mode = stat.S_IMODE(st.st_mode)
            configs.append(f'z {escape_value(tmpfiles_path)} {mode:04o}')
    elif stat.S_ISDIR(st.st_mode):
        if stat.S_IMODE(st.st_mode) != 0o755:
            mode = stat.S_IMODE(st.st_mode)
            configs.append(f'z {escape_value(tmpfiles_path)} {mode:04o}')
    else:
        return []
    for attribute in os.listxattr(p, follow_symlinks=False):
        if attribute == "security.capability":
            out = subprocess.check_output(['getcap', p], encoding='ascii')
            _, value = out.splitlines()[0].split(' ', 1)
            configs.append(f'k {escape_value(tmpfiles_path)} - - - - {value}')
        else:
            value = os.getxattr(p, attribute, follow_symlinks=False)
            configs.append(f't {escape_value(tmpfiles_path)} - - - - {escape_value(attribute)}={value.decode("ascii")}')

    return configs

def retrieve(sysroot, roots):
    configs = []
    for r in roots:
        root = os.path.join(sysroot, os.path.relpath(r, '/'))
        for dirpath, dirnames, filenames in os.walk(root):
            for d in dirnames:
                p = os.path.join(dirpath, d)
                if os.path.islink(p):
                    continue
                configs.extend(retrieve_one(sysroot, root, os.path.relpath(p, root)))
            for f in filenames:
                p = os.path.join(dirpath, f)
                if os.path.islink(p):
                    continue
                configs.extend(retrieve_one(sysroot, root, os.path.relpath(p, root)))
    return configs

configs = retrieve(args.sysroot, args.roots)
with open(args.backup, 'w') as f:
    for config in configs:
        f.write(config)
        f.write('\n')
