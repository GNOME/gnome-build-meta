kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/3.38/gnome-maps-3.38.5.tar.xz
  ref: f04d05b0df50cb22f3ff898a7f1fbe0eeca676406c62fb5b183e8e6845fd8fd2
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
