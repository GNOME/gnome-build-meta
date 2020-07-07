kind: meson
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/libosinfo-1.8.0.tar.xz
  ref: 49ff32be0d209f6c99480e28b94340ac3dd0158322ae4303adfbdfe973a108a5
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-tests=false
