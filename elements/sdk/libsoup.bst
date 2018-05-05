kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsoup
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libpsl.bst
- filename: sdk/vala.bst
  type: build
- base.bst
variables:
  conf-local: --disable-tls-check
