kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/42/gnome-calendar-42.1.tar.xz
  ref: d12281cbbf1af86c72375fe6ad9346ed0e2c2f388a1eae858cece64060a6eba8
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
