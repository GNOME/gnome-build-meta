kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgudev
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- base.bst
variables:
  conf-local: --disable-umockdev
