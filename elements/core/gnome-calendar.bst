kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/42/gnome-calendar-42.rc.tar.xz
  ref: d64d991b759bc2f76f8c940589c77d81bda811eae0a39fbd932a0857f4747994
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
