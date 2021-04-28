kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz

  ref: 29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

