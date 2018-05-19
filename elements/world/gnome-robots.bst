kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-robots
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
