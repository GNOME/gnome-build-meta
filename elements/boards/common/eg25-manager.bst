kind: meson

sources:
- kind: git_repo
  url: https://gitlab.com/mobian1/eg25-manager.git
  track: 0.4.4
  ref: 0.4.4-0-gbe6a924f8d39e5fabad88470c88174f61a3fa88b

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- boards/common/libgpiod.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/curl.bst
