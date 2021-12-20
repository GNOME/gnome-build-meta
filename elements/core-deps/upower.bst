kind: autotools

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/upower/upower/uploads/177df5b9f9b76f25a2ad9da41aa0c1fa/upower-0.99.13.tar.xz

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
