kind: autotools
sources:
- kind: git
  url: git_gnome_org:gsound
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libcanberra.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk-doc
