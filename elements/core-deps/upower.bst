kind: meson

sources:
- kind: tar
  url: freedesktop:upower/upower/-/archive/v1.90.0/upower-v1.90.0.tar.bz2

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libimobiledevice.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
