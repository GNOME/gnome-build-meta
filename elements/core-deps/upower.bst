kind: meson

sources:
- kind: tar
  url: freedesktop_files:upower/upower/-/archive/v1.90.9/upower-v1.90.9.tar.bz2
  ref: ca6018535817c2ea687e389e6b47583342154123c0eea0497b409c49dff319b6

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
