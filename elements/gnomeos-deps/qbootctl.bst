kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:linux-msm/qbootctl.git
  track: '*.*'
  ref: 0.2.2-0-g39a6e6daaf029fb0a083777679a15ea2c18f72de
