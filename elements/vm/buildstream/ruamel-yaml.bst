kind: pip

sources:
- kind: tar
  url: pypi:1d/2f/40abf6501e051df8af970bfa6d81a90fcd62dc536f82ceec80a2694a3123/ruamel.yaml-0.16.13.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- vm/buildstream/ruamel-yaml-clib.bst
- freedesktop-sdk.bst:components/python3.bst
