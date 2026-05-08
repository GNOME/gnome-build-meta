kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-maps.git
  track: main
  ref: 50.rc-80-g2c32f2e56b701124865ee784beb1e3de616339af

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst

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
