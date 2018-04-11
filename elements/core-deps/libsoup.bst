kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsoup
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libpsl.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --disable-tls-check
