kind: autotools
sources:
- kind: git
  url: git_gnome_org:gsettings-desktop-schemas
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: --enable-introspection=yes
