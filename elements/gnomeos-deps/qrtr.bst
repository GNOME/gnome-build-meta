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
  ref: v1.1-0-g8f9b2bc3b60f59ecc9e6193764fa885cdef7f0ce
