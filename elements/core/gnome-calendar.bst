kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/43/gnome-calendar-43.0.tar.xz
  ref: 09e5c0f9360f3f856deaa7c0db30f5dab0151180df4183807c6cf3602992f5cc
build-depends:
- sdk/appstream-glib.bst
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
