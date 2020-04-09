kind: meson
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/libosinfo-1.7.1.tar.xz
- kind: remote
  url: http://www.linux-usb.org/usb.ids
- kind: remote
  url: http://pci-ids.ucw.cz/v2.2/pci.ids
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
