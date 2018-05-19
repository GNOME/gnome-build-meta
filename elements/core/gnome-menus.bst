kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-menus
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
