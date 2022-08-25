# eg25-manager
kind: meson
sources:
- kind: git
  url: https://gitlab.com/mobian1/eg25-manager.git
  track: 0.4.4
build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- custom/libgpiod.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/curl.bst
