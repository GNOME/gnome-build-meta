kind: pyproject

sources:
- kind: tar
  url: 
    pypi:bb/22/f1129e69d94ffff626bdb5c835506b3a5b4f3d070f17ea295e12c2c6f60f/pyparsing-3.2.3.tar.gz
  ref: b9c13f1ab8b3b542f72e28f634bad4de758ab3ce4546e4301970ad6fa77c38be

variables:
  strip-binaries: ''

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-flit.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
