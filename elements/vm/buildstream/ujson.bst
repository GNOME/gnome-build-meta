kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/86/0a/80d87aa4ee79980bddabef13cb7d95de330f85355cf08dfdaf874889b02b/ujson-4.0.2.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
