kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/a9/47/505af0c53c8aaf028b67c76e994de3939672757f262826655de344a174dd/arpy-2.1.0.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
