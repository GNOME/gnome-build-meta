kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/47/gnome-calendar-47.0.tar.xz
  ref: 3b03313f1c4d12dc821e07e209d1596d53eafa255d492d2ce5abf92ed1b51e76
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
