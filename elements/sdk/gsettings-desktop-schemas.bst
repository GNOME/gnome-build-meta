kind: autotools
sources:
- kind: git
  url: git_gnome_org:gsettings-desktop-schemas
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- base.bst
variables:
  conf-local: --enable-introspection=yes
