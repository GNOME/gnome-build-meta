kind: autotools
sources:
- kind: tar
  url: https://gitlab.freedesktop.org/upower/upower/uploads/93cfe7c8d66ed486001c4f3f55399b7a/upower-0.99.11.tar.xz
  ref: 64b5ffbfccd5bdb15d925777979a4dbee1a957f9eaeb158dc76175267eddbdef
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libgudev.bst
- core-deps/libusb.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
