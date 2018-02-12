kind: autotools
sources:
- kind: git
  url: git_gnome_org:swell-foop
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- base.bst
