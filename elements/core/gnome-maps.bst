kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-maps/51/gnome-maps-51.alpha.tar.xz
  ref: 56cdec0080d3045a928cef6426c089c71a2de37d085df710cd144fbea4efebd3
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/librsvg.bst

depends:
- core-deps/libgweather.bst
- core-deps/librest.bst
- core-deps/libshumate.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libportal.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
