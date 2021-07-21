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
  track: master
  ref: 0.10.1-0-ga86fc1fbd650a19eba313c3f642c9e2c679dc8d6
