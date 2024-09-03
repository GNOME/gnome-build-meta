kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/47/gnome-calendar-47.rc.tar.xz
  ref: 736901c04fe50957fda2c85e52c6b6be2e3b0838188bc138492dea788c2e7d60
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
