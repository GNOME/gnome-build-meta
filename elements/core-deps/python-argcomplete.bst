kind: pyproject

sources:
- kind: pypi
  name: argcomplete
  ref:
    sha256sum: 0114d634013e11ac92cc329b3a7d886c3506e98ddc7bb23c99b1782aacc8b8bd
    suffix: 19/0d/ca63f1b8b706c70590d0a4acc9c3c94ea8ed4dd9c83b4f7af195868abe76/argcomplete-3.8.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-flit.bst
- freedesktop-sdk.bst:components/python3-hatchling.bst
- freedesktop-sdk.bst:components/python3-hatch-vcs.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''
