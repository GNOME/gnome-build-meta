kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:linux-msm/qrtr.git
  track: 'v*.*'
  ref: v1.2-0-gb51ffaf22707b6000ecfb894c5b750f3bb7843b2
