kind: pip

sources:
- kind: tar
  url: github_com:leohemsted/smartypants.py/archive/refs/tags/v2.0.1.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  pip: pip3
