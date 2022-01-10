kind: autotools

sources:
- kind: tar
  url: github_files:protocolbuffers/protobuf/releases/download/v3.15.8/protobuf-all-3.15.8.tar.gz

  ref: 2b737d6d120418c443c561cf4032c0141f9626f68f532b5d2c27ee8a191c996e
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

config:
  install-commands:
    (>):
    - python -m pip install --no-build-isolation --root=%{install-root} --prefix=%{prefix} python/
