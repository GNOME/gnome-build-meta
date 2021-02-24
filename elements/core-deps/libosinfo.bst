kind: meson
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/libosinfo-1.9.0.tar.xz
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
- sdk/libsoup-2.4.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-tests=false
config:
  install-commands:
    (>):
    - install -Dm644 -t '%{install-root}%{datadir}/libosinfo' pci.ids usb.ids
