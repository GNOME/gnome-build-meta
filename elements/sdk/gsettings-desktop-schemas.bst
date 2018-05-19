kind: autotools
sources:
- kind: git
  url: git_gnome_org:gsettings-desktop-schemas
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
