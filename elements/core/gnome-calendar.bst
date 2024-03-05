kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/46/gnome-calendar-46.rc.tar.xz
  ref: d5b8401f9e2b22ed4d63ef0547f8335c3c5c6d09b1599b8c0695db97171b0420
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
