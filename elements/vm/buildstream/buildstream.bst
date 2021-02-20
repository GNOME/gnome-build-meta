kind: distutils

sources:
- kind: tar
  url: https://download.gnome.org/sources/BuildStream/1.6/BuildStream-1.6.1.tar.xz

  ref: 2ba614e13c0641c28e27dc3c41e5b2418e729a9e39ffc06064b8b713390a6b5c
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
- vm/buildstream/jinja2.bst
- vm/buildstream/pluginbase.bst
- vm/buildstream/psutil.bst
- vm/buildstream/ruamel-yaml.bst
- vm/buildstream/ujson.bst
- vm/buildstream/breezy.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/fuse.bst
