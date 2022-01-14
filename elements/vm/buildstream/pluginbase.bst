kind: pip

sources:
- kind: tar
  url: pypi:3d/3c/fe974b4f835f83cc46966e04051f8708b7535bac28fbc0dcca1ee0c237b8/pluginbase-1.0.0.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3.bst
