kind: pip

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  pip: pip3

sources:
- kind: git_tag
  url: https://github.com/uiri/toml.git
  track: 0.10.2-0-g3f637dba5f68db63d4b30967fedda51c82459471
