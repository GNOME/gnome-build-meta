kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-maps.git
  track: main
  ref: v43.0-24-g608964f5c0c07502b8c6af7a4ec7a16b42328d2b
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/librsvg.bst
depends:
- core-deps/libshumate.bst
- core-deps/libgweather.bst
- core-deps/librest.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
