kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/3.38/gnome-maps-3.38.4.tar.xz
  ref: d5641e91ffe478fb2aa9ca4896225ccf18ec2ea4d98e35765179818a7dbe44a3
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
