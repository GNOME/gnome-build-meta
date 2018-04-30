kind: autotools
sources:
- kind: git
  url: gitlab_com:libosinfo/libosinfo.git
  track: master
- kind: local
  path: files/libosinfo/pci.ids
- kind: local
  path: files/libosinfo/usb.ids
depends:
- core-deps/osinfo-db-tools.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-werror=no
