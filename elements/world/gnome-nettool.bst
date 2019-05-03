kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-nettool.git
  track: master
depends:
- core-deps/libgtop.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
