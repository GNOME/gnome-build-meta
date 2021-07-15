kind: distutils
sources:
- kind: git_tag
  url: https://gitlab.com/BuildStream/bst-external.git
  track: 0.23.0
  ref: 0.23.0-0-g782876a9288e9867a9ee3e77419d005e8348224f
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- vm/buildstream/buildstream.bst

runtime-depends:
- vm/buildstream/pytoml.bst
