kind: meson
sources:
- kind: tar
  url: pagure_releases:libosinfo/libosinfo-1.11.0.tar.xz
  ref: 1bf96eec9e1460f3d1a713163cca1ff0d480a3490b50899292f14548b3a96b60
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-tests=false
config:
  install-commands:
    (>):
    - install -Dm644 -t '%{install-root}%{datadir}/libosinfo' pci.ids usb.ids
