kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
