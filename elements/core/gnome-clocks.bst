kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/41/gnome-clocks-41.0.tar.xz
  ref: df8c8b04ab92fa618f5dee5118571ef9fc9e8a5b795ea00a35c6dc677cb02dac
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
