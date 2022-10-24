kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/43/gnome-calendar-43.1.tar.xz
  ref: afa5fc66e2f691553cc7d517db2363cff2d62cd1b5df455e5f4f7133139d21f2
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
