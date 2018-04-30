kind: autotools
sources:
- kind: git
  url: git_gnome_org:gsound
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libcanberra.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --disable-gtk-doc
