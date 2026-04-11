kind: autotools

sources:
- kind: git_repo
  url: github:libmtp/libmtp.git
  track: 'v*.*.*'
  ref: v1.1.22-0-g32b0375913115786a73ffa33706cb148ff9a9921

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  autogen: |
    autopoint -f && autoreconf -fvi
