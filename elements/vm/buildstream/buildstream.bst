kind: distutils

sources:
- kind: tar
  url: https://github.com/apache/buildstream/archive/refs/tags/1.6.2.tar.gz

depends:
- sdk-deps/bubblewrap.bst
- vm/buildstream/pytest-runner.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst

runtime-depends:
- sdk/pygobject.bst
- core-deps/libostree.bst
- vm/buildstream/arpy.bst
- vm/buildstream/click.bst
- vm/buildstream/grpcio.bst
- vm/buildstream/pluginbase.bst
- vm/buildstream/psutil.bst
- vm/buildstream/ruamel-yaml.bst
- vm/buildstream/ujson.bst
- vm/buildstream/breezy.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/fuse.bst
