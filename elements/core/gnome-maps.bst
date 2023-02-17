kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/44/gnome-maps-44.beta.tar.xz
  ref: 9e4ffc9b1cc9c75273665ddc2c0818a1b72e3e431ed7c6423f3eca55d7bf7302
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
