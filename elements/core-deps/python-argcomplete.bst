kind: pyproject

sources:
- kind: pypi
  name: argcomplete
  ref:
    sha256sum: aad8b69a0b9969edb62db0d1752354c0d50717b10e0cbb00e2a958381b9fc6b9
    suffix: 87/6f/5a73f04007ca950701765949209f068da628bd11f9c2da287278ce91e0ee/argcomplete-3.7.2.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-flit.bst
- freedesktop-sdk.bst:components/python3-hatchling.bst
- freedesktop-sdk.bst:components/python3-hatch-vcs.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''
