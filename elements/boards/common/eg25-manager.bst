kind: meson

sources:
- kind: git_repo
  url: gitlab:mobian1/eg25-manager.git
  track: "*.*.*"
  ref: 0.4.6-0-ge7790f941c053837e596dccd92ba97051a2d4cc1

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- boards/common/libgpiod.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/curl.bst
