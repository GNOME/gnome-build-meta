kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/43/gnome-maps-43.alpha.tar.xz
  ref: c0513d83cb6b989e47159cf89c72e7b0881e8da9e5ea47c8d7e7362d8eae1390
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gtk.bst
- core-deps/geocode-glib-1.bst
- core-deps/libchamplain.bst
- core-deps/libgweather.bst
- core-deps/librest-0.7.bst
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
