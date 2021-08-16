kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/41/gnome-maps-41.beta.tar.xz
  ref: b3cc52645124ff73d8b7232cd0ba9aafb4ddcf848f6577818cc3b7b5000ad012
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/gfbgraph.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
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
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
