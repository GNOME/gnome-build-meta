kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-weather.git
  track: cdavis/typescript
  ref: 48.0-28-g9144bc9f3e04160485bd4e495f0b06cc4f6ac980
- kind: git_module
  url: gnome_gitlab:BrainBlasted/gi-typescript-definitions.git
  path: gi-types
  ref: e70b4992aa71f5298c4a98f0e9e42b7761601c5b

build-depends:
- sdk/gobject-introspection.bst
- core-deps/typescript.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
- freedesktop-sdk.bst:bootstrap-import.bst
