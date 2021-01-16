kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/b6/3f/66262b970bd7e9b536892219a71d3b1951b760f94320b7b0719295d3a7ae/ujson-3.0.0.tar.gz

  ref: e0199849d61cc6418f94d52a314c6a27524d65e82174d2a043fb718f73d1520d
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
