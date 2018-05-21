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
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libsoup.bst
- core-deps/osinfo-db-tools.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-werror=no
