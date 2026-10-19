kind: pyproject

sources:
- kind: pypi
  name: pyparsing
  ref:
    sha256sum: 928ae7e20211f3b6f3915a72f06a0cfd29ab9d24279dd6346b6b1a7146397d36
    suffix: e4/11/b213bebff182584360cb8d17c72c1677fec5c5c228de439e63bcf8ab1c8f/pyparsing-3.3.3.tar.gz
variables:
  strip-binaries: ''

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-flit.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
