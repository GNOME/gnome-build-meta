kind: meson

sources:
- kind: tar
  url: freedesktop_files:upower/upower/-/archive/v1.90.6/upower-v1.90.6.tar.bz2
  ref: aed4e42a21307512ad236ad58d7ee4e0196670c8524a168a0edccdc32964ea0c

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libimobiledevice.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
