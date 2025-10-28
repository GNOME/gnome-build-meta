kind: meson

sources:
- kind: git_repo
  url: gitlab:mobian1/eg25-manager.git
  track: "*.*.*"
  ref: 0.5.2-0-g99aa7e2bf7c3b93a84929ebc1ddc46ae881fde65

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- boards/common/libgpiod.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/curl.bst
