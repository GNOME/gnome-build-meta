kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/49/gnome-calendar-49.1.tar.xz
  ref: 0c1115ab294d532c4c19f56ce0d7aee53f8ea32b1430209dd1d9eda47a83d2c2
build-depends:
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
