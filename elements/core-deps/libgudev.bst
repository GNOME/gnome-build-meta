kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgudev
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: --disable-umockdev
