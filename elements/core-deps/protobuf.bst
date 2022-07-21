kind: autotools

sources:
- kind: tar
  url: github_files:protocolbuffers/protobuf/releases/download/v21.2/protobuf-all-21.2.tar.gz

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
