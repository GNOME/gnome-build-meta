kind: autotools

sources:
- kind: git_repo
  url: github:libmtp/libmtp.git
  track: 'v*.*.*'
  ref: v1.1.23-0-g55fa074240b703adb48c78d31d156879cb9e4959

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  autogen: |
    autopoint -f && autoreconf -fvi
