kind: pyproject

sources:
- kind: tar
  url: 
    pypi:a1/58/a3994e328b33e4cfa6ea9b6213c1ddff2fffdd6b342560fe92a400ab9eaf/python_dbusmock-0.36.0.tar.gz
  ref: 2d3812ee6c1e15607bca882ed5dfcabaac449c1a3b9627080bbab3deefd56fd2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
