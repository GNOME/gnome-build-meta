kind: meson
sources:
- kind: git
  url: git_gnome_org:eog
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gettext.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/meson.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
