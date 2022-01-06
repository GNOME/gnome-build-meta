kind: pip

sources:
- kind: tar
  url: github_files:apache/buildstream/archive/refs/tags/1.6.3.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- sdk-deps/bubblewrap.bst
- vm/buildstream/click.bst
- vm/buildstream/grpcio.bst
- vm/buildstream/pluginbase.bst
- vm/buildstream/psutil.bst
- vm/buildstream/pytest-runner.bst
- vm/buildstream/ruamel-yaml.bst
- vm/buildstream/ujson.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- core-deps/libostree.bst
- sdk/pygobject.bst
- vm/buildstream/arpy.bst
- vm/buildstream/breezy.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/fuse.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/patch.bst
