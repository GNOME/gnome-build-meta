kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/31/02/791c17b92e6d04c43f9b318c95a3f3c3e1ea718aa72ad95b9dac147895fa/dulwich-0.20.21.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3-certifi.bst
- freedesktop-sdk.bst:components/python3-urllib3.bst
