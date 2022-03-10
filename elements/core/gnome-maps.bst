kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/42/gnome-maps-42.rc.tar.xz
  ref: 53fd679acafcdeba4abf4a1e1fa1836358516246139ee03cf6973d03e2302114
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gtk.bst
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/gfbgraph.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
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
