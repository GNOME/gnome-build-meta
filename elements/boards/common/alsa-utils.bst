kind: autotools

sources:
- kind: git_repo
  url: github:alsa-project/alsa-utils.git
  track: v*
  ref: v1.2.12-0-gf417c1acfc2fe6fb2450df8ded3e8d1b1cc372aa

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
