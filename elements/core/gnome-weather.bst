kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-weather.git
  track: main
  ref: 50.0-19-g5b2aafdeddb8e93ee98fdea59993f2191dd5bf53
- kind: git_module
  url: gnome_gitlab:BrainBlasted/gi-typescript-definitions.git
  path: gi-types
  ref: e70b4992aa71f5298c4a98f0e9e42b7761601c5b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- core-deps/typescript.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
