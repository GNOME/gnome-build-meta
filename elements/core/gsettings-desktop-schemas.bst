kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
