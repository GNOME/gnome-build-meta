kind: autotools

sources:
- kind: git_repo
  url: github:alsa-project/alsa-utils.git
  track: v*
  ref: v1.2.14-0-g8cbe7b8cd281118ac1a0819a6eda3fe62368a22d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
