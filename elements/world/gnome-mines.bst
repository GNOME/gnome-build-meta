kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-mines
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
