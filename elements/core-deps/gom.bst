kind: meson
sources:
- kind: git
  url: git_gnome_org:gom
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
