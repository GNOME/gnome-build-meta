kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-clocks/3.34/gnome-clocks-3.34.0.tar.xz
  ref: 61195f357c63b65b75e209494e12a122a802c75333290e136813565dca94f03c
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
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
