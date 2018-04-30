kind: meson
sources:
- kind: git
  url: git_gnome_org:at-spi2-core
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- base.bst
