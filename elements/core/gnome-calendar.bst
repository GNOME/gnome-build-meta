kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/46/gnome-calendar-46.1.tar.xz
  ref: 9861ff7b8abd5b7b20690ba55eb7542c7ec534b566269e29b5b1e858c1610897
build-depends:
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
- freedesktop-sdk.bst:bootstrap-import.bst
