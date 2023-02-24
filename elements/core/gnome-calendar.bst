kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/44/gnome-calendar-44.beta.tar.xz
  ref: de5979b31ca8a95c89cd441a7f4d6227b11597a9a2242d8df720a0612bf7c722
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
