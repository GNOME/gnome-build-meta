kind: autotools
sources:
- kind: git
  url: git_gnome_org:hitori
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
