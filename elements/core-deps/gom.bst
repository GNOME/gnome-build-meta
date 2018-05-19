kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gom
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
