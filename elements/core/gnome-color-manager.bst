kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-color-manager
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/colord-gtk.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- base.bst
