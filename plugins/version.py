import json
import os
import subprocess
from buildstream import Source, utils

class VersionSource(Source):

    BST_MIN_VERSION = "2.0"

    def configure(self, node):
        node.validate_keys(['filename', *Source.COMMON_CONFIG_KEYS])

        host_git = utils.get_host_tool("git")

        self.filename = node.get_str('filename')

        self.date = subprocess.check_output([host_git, '-C', self.get_project_directory(),
                                             'log', '-1', '--format=format:%ct', 'HEAD'], encoding='utf-8').rstrip('\n')
        self.commit = subprocess.check_output([host_git, '-C', self.get_project_directory(),
                                               'describe', '--tags', '--abbrev=40', 'HEAD'], encoding='utf-8').rstrip('\n')

    def preflight(self):
        pass

    def is_resolved(self):
        return True

    def is_cached(self):
        return True

    def get_unique_key(self):
        return [self.filename, self.date, self.commit]

    def stage(self, directory):
        with open(os.path.join(directory, self.filename), 'w') as f:
            json.dump({
                'date': self.date,
                'commit': self.commit,
            }, f)

def setup():
    return VersionSource
