kind: autotools

sources:
- kind: git_repo
  url: github:mike-fabian/ibus-typing-booster.git
  track: '*.*'
  ref: 2.28.2-0-gf71882b171f9eef99bbf9dac154698e58ee618f8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/libibus.bst
