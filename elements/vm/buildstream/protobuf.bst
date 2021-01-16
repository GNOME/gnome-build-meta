kind: autotools

sources:
- kind: tar
  url: github_com:protocolbuffers/protobuf/releases/download/v3.12.4/protobuf-all-3.12.4.tar.gz

  ref: e7bf41873d1a87c05c2b0a6197f4445c6ea3469ce0165ff14de2df8b34262530
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

config:
  build-commands:
    (>):
    - |
      cd python
      python3 setup.py build

  install-commands:
    (>):
    - |
      cd python
      python3 setup.py install --prefix "%{prefix}" --root "%{install-root}"

  strip-commands:
    (>):
    - |
      %{fix-pyc-timestamps}
