kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-klotski
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/yelp-tools.bst
- world/libgnome-games-support.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
