kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsoup
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libpsl.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --disable-tls-check
