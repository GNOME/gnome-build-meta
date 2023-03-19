kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/44/gnome-calendar-44.0.tar.xz
  ref: 96acd74cbf45652934515cc3447a3b895e933f86324ca92436f67ddd63c3a802
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
- freedesktop-sdk.bst:bootstrap-import.bst
