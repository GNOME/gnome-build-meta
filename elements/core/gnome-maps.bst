kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-maps.git
  track: main
  ref: 49.rc-74-g873bb3aa62dbb2bc6524b217f1e237a235e912bb

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/librsvg.bst

depends:
- core-deps/libgweather.bst
- core-deps/libportal.bst
- core-deps/librest.bst
- core-deps/libshumate.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
