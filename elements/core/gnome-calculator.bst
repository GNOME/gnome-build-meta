kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-calculator
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libsoup.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- base.bst
