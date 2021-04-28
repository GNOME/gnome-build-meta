kind: distutils

sources:
- kind: git_tag
  url: https://gitlab.com/BuildStream/bst-external.git
  track: 0.21.0

  ref: 0.21.0-0-gd00bc2a0442ea6a33ef81ed0c5f4515d11274237
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- vm/buildstream/buildstream.bst

runtime-depends:
- vm/buildstream/pytoml.bst
