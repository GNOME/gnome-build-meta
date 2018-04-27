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
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- core-deps/osinfo-db-tools.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-werror=no
