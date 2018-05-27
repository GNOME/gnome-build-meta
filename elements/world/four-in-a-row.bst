kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/four-in-a-row
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
