kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/42/gnome-calendar-42.0.tar.xz
  ref: b63f73f55032fc1390442f94cdf6b3cab9c91c774ddd2e5c61ecfec9d2c5e9aa
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
