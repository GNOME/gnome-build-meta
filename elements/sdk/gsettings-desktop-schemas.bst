kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection=yes
