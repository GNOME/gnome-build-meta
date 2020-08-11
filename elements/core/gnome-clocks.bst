kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/3.37/gnome-clocks-3.37.90.tar.xz
  ref: 4dd23495074ae306d9ee30c6bab72624c7ed05c49c77ab124839003c9cb4ff9b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core-deps/libhandy.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
