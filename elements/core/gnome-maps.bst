kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-maps.git
  track: main
  ref: 51.alpha-1-g3c656689d806487e4fd22bdeb2b154cfd7476f5b

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
