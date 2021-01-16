kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/3.38/gnome-clocks-3.38.0.tar.xz
  ref: d956cb050f1ca46b443519e4f59ab204290d6270dec91c74b53895aecc794438
build-depends:
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
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
