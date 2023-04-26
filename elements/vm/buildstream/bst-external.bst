kind: pip

sources:
- kind: git_tag
  url: gitlab:BuildStream/bst-external.git
  track: master
  ref: 0.30.0-6-ga0810352417e9c5565f37be11a47d98956d7acf0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- vm/buildstream/buildstream.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3-tomli.bst
