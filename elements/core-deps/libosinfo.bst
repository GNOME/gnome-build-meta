depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libsoup.bst
- core-deps/osinfo-db-tools.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: ee254fcf3f92447787a87b3f6df190c694a787de46348c45101e8dc7b29b5a78
  url: https://releases.pagure.org/libosinfo/libosinfo-1.2.0.tar.gz
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids
variables:
  conf-local: --enable-werror=no
