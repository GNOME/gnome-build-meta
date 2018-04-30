kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-color-manager
  track: master
depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- base.bst
