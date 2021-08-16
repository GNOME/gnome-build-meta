kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/b4/2d/9a1fb66d3632a4646f52cf4d75cda1f14bf6fb74f1bf322236de347523e8/arpy-2.2.0.tar.gz

  ref: e07dfefc4cdf3d8b080e4b37e8c2b8360e7741b10faf6528f820b74999e0e6bc
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
