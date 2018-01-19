kind: autotools
sources:
- kind: git
  url: git_gnome_org:yelp
  track: master
depends:
- core-deps/WebKit.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/m4-common.bst
- core-deps/yelp-xsl.bst
- base.bst
