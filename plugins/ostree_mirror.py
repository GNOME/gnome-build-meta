import os
import shutil
import gi
gi.require_version('OSTree', '1.0')
gi.require_version('Gio', '2.0')
from gi.repository import OSTree, Gio, GLib
from buildstream import Source, SourceError, Consistency
from buildstream import utils
import collections
import fnmatch

class OSTreeMirrorSource(Source):

    def configure(self, node):
        self.node_validate(node, ['match', 'path', 'url', 'ref', 'gpg'] + Source.COMMON_CONFIG_KEYS)

        self.original_url = self.node_get_member(node, str, 'url', None)
        if self.original_url:
            self.url = self.translate_url(self.original_url)
        else:
            path = self.node_get_project_path(node, 'path')
            fullpath = os.path.join(self.get_project_directory(), path)
            self.url = self.original_url = 'file://{}'.format(fullpath)
        self.ref = self.node_get_member(node, list, 'ref', None)
        if self.ref is not None:
            for r in self.ref:
                self.node_validate(r, ['ref', 'checksum'])
        self.mirror = os.path.join(self.get_mirror_directory(),
                                   utils.url_directory_name(self.original_url))

        gpg = self.node_get_project_path(node, 'gpg')
        self.gpg = os.path.join(self.get_project_directory(), gpg)
        self.match = self.node_get_member(node, str, 'match', None)

        self.repo = OSTree.Repo.new(Gio.File.new_for_path(self.mirror))
        if os.path.isdir(self.mirror):
            self.repo.open()
        else:
            os.makedirs(self.mirror)
            self.repo.create(OSTree.RepoMode.ARCHIVE)
            self.repo.remote_add('origin', self.url, None, None)
            gpgfile = Gio.File.new_for_path(self.gpg)
            self.repo.remote_gpg_import('origin', gpgfile.read(None), None, None)

    def preflight(self):
        pass

    def get_unique_key(self):
        return [self.original_url, sorted(self.ref, key=lambda x: x['ref'])]

    def load_ref(self, node):
        self.ref = self.node_get_member(node, list, 'ref', None)
        if self.ref is not None:
            for r in self.ref:
                self.node_validate(r, ['ref', 'checksum'])

    def get_ref(self):
        return self.ref

    def set_ref(self, ref, node):
        node['ref'] = self.ref = ref

    def track(self):
        self.repo.pull('origin', None,
                       OSTree.RepoPullFlags.MIRROR,
                       None, None)

        found, refs = self.repo.remote_list_refs('origin')
        kept_refs = []
        for ref, checksum in sorted(refs.items(), key = lambda x: x[0]):
            if not self.match or fnmatch.fnmatch(ref, self.match):
                kept_refs.append({'ref': ref, 'checksum': checksum})

        return kept_refs

    def _refs(self):
        for r in self.ref:
            ref = r['ref']
            checksum = r['checksum']
            yield ref, checksum

    def fetch(self):
        to_fetch = []
        for _, checksum in self._refs():
            found, _ = self.repo.resolve_rev(checksum, False)
            if not found:
                to_fetch.append(checksum)

        if to_fetch:
            self.repo.pull('origin', [to_fetch],
                           OSTree.RepoPullFlags.MIRROR,
                           None, None)

    def stage(self, directory):
        local_repo = OSTree.Repo.new(Gio.File.new_for_path(directory))
        local_repo.create(OSTree.RepoMode.ARCHIVE)

        refs = GLib.Variant("as", [checksum for _, checksum in self._refs()])
        options = GLib.Variant("a{sv}", {
            'refs': refs,
        })

        local_repo.pull_with_options('file://{}'.format(self.mirror),
                                     options, None)
        for ref, checksum in self._refs():
            local_repo.set_ref_immediate(None, ref, checksum, None)

    def get_consistency(self):
        if self.ref is None:
            return Consistency.INCONSISTENT

        for _, checksum in self._refs():
            found, _ = self.repo.resolve_rev(checksum, False)
            if not found:
                return Consistency.RESOLVED
        return Consistency.CACHED

def setup():
    return OSTreeMirrorSource
