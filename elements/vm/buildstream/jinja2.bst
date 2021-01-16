kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/64/a7/45e11eebf2f15bf987c3bc11d37dcc838d9dc81250e67e4c5968f6008b6c/Jinja2-2.11.2.tar.gz

  ref: 89aab215427ef59c34ad58735269eb58b1a5808103067f7bb9d5836c651b3bb0
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- vm/buildstream/python3-markupsafe.bst
