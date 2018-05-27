kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-color-manager
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libcanberra.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
