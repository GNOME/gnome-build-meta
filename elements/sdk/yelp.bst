kind: autotools
sources:
- kind: git
  url: git_gnome_org:yelp
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-xsl.bst
- sdk/adwaita-icon-theme.bst
- base.bst
