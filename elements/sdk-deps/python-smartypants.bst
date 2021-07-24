kind: pip

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  pip: pip3

sources:
- kind: git_tag
  url: https://github.com/leohemsted/smartypants.py.git
  track: v2.0.1-0-gd4b99ab7e7e6f42ba2d75624715c5c47c8de650d
