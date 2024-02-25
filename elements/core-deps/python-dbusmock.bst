kind: pyproject

sources:
- kind: tar
  url: pypi:bb/6f/9f958b3e9d3165b552e00c10f1c047fd2e235f6e58021be5225279f7b88b/python-dbusmock-0.31.1.tar.gz
  ref: b23b8e1b51fe2a9b13e617fff6b60b3ed8e536c080cf3498019d223678d5ea49

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
