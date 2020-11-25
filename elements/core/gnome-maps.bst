kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/3.38/gnome-maps-3.38.2.tar.xz
  ref: a1a73ca6a47435add25f8fa022ed016c84dd2db3ef4976a8280721d3ea80465d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
- core-deps/libgfbgraph-0.2.bst
- core-deps/libhandy.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter-gtk.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
