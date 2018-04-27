kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-color-manager
  track: master
depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- base.bst
