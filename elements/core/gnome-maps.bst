kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-maps.git
  track: main
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/clutter-gtk.bst
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/libchamplain.bst
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
