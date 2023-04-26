kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/44/gnome-calendar-44.1.tar.xz
  ref: 30a1b738b670bd124e462468e671187fc0dba5b9ee2af6a8ebd9e7874bf3b77e
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
