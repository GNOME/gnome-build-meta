kind: pip

sources:
- kind: tar
  url: pythonhosted:packages/86/0a/80d87aa4ee79980bddabef13cb7d95de330f85355cf08dfdaf874889b02b/ujson-4.0.2.tar.gz

  ref: c615a9e9e378a7383b756b7e7a73c38b22aeb8967a8bfbffd4741f7ffd043c4d
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst
- freedesktop-sdk.bst:components/python3-wheel.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
