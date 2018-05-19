kind: autotools
sources:
- kind: git
  url: git_gnome_org:yelp
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-xsl.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
