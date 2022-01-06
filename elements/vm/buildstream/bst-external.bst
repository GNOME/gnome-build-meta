kind: pip

sources:
- kind: git_tag
  url: gitlab:BuildStream/bst-external.git
  track: 0.25.0

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- vm/buildstream/buildstream.bst
- freedesktop-sdk.bst:components/python3-requests.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3-toml.bst
