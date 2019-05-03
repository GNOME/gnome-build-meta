kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-robots.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
