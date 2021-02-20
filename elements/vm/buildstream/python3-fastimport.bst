kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/aa/65/47a579aae80fbd8b89cfbdffcde8dff68d57e3148b99da6a326673021455/fastimport-0.9.8.tar.gz

  ref: b2f2e8eb97000256e1aab83d2a0a053fc7b93c3aa4f7e9b971a5703dfc5963b9
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
