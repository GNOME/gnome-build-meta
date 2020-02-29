kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/3.35/gnome-maps-3.35.92.tar.xz
  ref: 3ae1be5dfe50a8d9baae7145dcce0152a279eb82d53c66b1bed66356f88205ee
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
