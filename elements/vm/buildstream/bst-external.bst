kind: distutils

sources:
- kind: git_tag
  url: https://gitlab.com/BuildStream/bst-external.git
  track: 0.23.1

  ref: 0.23.1-0-g2c9a9287cfe4e5eb10aa72c82027d4d81ab4217c
build-depends:
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3-setuptools.bst
- vm/buildstream/buildstream.bst

runtime-depends:
- sdk-deps/python-toml.bst
