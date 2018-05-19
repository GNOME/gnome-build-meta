kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/iagno
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
