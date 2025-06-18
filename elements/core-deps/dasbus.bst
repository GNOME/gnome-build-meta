kind: pyproject

sources:
- kind: tar
  url: 
    pypi:37/79/9c5984d723ffbe2e839ee649690f3e1fa6544ab6a17a5150e5ac14a47072/dasbus-1.7.tar.gz
  ref: a8850d841adfe8ee5f7bb9f82cf449ab9b4950dc0633897071718e0d0036b6f6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
