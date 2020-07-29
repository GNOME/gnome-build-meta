kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/b6/3f/66262b970bd7e9b536892219a71d3b1951b760f94320b7b0719295d3a7ae/ujson-3.0.0.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
