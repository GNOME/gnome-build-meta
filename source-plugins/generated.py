# This is a modified version of https://github.com/apache/buildstream/blob/master/src/buildstream/plugins/sources/local.py

import os
import shutil
import subprocess
import tempfile
import threading
from buildstream import Source, SourceError, Directory, SourceInfoMedium, SourceVersionType

_lock = threading.Lock()

class GeneratedSource(Source):

    BST_MIN_VERSION = "2.0"
    BST_STAGE_VIRTUAL_DIRECTORY = True

    __digest = None

    def configure(self, node):
        node.validate_keys(["template", "name", "args", "path", *Source.COMMON_CONFIG_KEYS])
        name = node.get_str("name")
        self.directory = os.path.expanduser(f"~/.config/buildstream-generate/{name}")
        self.args = node.get_str_list("args", default=[])
        self.template_path = self.node_get_project_path(node.get_scalar("template"))
        self.template_fullpath = os.path.join(self.get_project_directory(), self.template_path)

        self.path = node.get_str("path")
        self.fullpath = os.path.join(self.directory, self.path)

    def _ensure_initialized(self):
        if os.path.isdir(self.directory):
            return
        with _lock:
            if os.path.isdir(self.directory):
                return
            os.makedirs(os.path.dirname(self.directory), exist_ok=True)
            with tempfile.TemporaryDirectory(dir=os.path.dirname(self.directory), delete=False) as tmpdir:
                try:
                    shutil.copytree(self.template_fullpath, tmpdir, dirs_exist_ok=True)
                    subprocess.check_call(["make"] + self.args, cwd=tmpdir)
                except:
                    shutil.rmtree(tmpdir)
                    raise
                os.rename(tmpdir, self.directory)

    def preflight(self):
        self._ensure_initialized()

    def is_resolved(self):
        return True

    def is_cached(self):
        return True

    def get_unique_key(self):
        self.__ensure_digest()
        return self.__digest.hash

    def load_ref(self, node):
        pass

    def get_ref(self):
        return None

    def fetch(self):
        pass

    def stage_directory(self, directory):
        assert isinstance(directory, Directory)
        assert self.__digest is not None
        with self._cache_directory(digest=self.__digest) as cached_directory:
            directory.import_files(cached_directory, collect_result=False)

    def init_workspace_directory(self, directory):
        self.__do_stage(directory)

    def collect_source_info(self):
        self.__ensure_digest()
        version = "{}/{}".format(self.__digest.hash, self.__digest.size_bytes)
        return [self.create_source_info(self.path, SourceInfoMedium.LOCAL, SourceVersionType.CAS_DIGEST, version)]

    def __ensure_digest(self):
        if not self.__digest:
            with self._cache_directory() as directory:
                self.__do_stage(directory)
                self.__digest = directory._get_digest()


    def __do_stage(self, directory):
        with self.timed_activity("Staging local files into CAS"):
            if os.path.isdir(self.fullpath) and not os.path.islink(self.fullpath):
                result = directory.import_files(self.fullpath)
            else:
                result = directory.import_single_file(self.fullpath)

            if result.overwritten or result.ignored:
                raise SourceError(
                    "Failed to stage source: files clash with existing directory", reason="ensure-stage-dir-fail"
                )

def setup():
    return GeneratedSource
