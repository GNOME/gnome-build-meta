kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libnotify
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
