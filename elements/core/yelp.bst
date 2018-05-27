kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/yelp
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-xsl.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
