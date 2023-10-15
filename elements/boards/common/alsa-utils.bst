kind: autotools

sources:
- kind: git_repo
  url: github:alsa-project/alsa-utils.git
  track: v*
  ref: v1.2.10-0-gc2a6bcba1e413ec62ee268557f7b2a8ab792e91b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
