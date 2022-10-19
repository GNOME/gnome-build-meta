kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-maps.git
  track: main
  ref: v43.0-27-g9508ea6d6475c793169cc310ed0bb215c942d1c2
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
