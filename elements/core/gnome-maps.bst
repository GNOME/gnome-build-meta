kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/3.36/gnome-maps-3.36.4.1.tar.xz
  ref: 8da9feaa5f0e54c845a0fdb2dc5a43c99e48748536f11162b7fc0008b9d51bfc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
- core-deps/libgfbgraph.bst
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
