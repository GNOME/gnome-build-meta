kind: distutils

sources:
- kind: git_tag
  url: https://gitlab.com/BuildStream/bst-external.git
  track: 0.21.0

build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- vm/buildstream/buildstream.bst

runtime-depends:
- vm/buildstream/pytoml.bst
