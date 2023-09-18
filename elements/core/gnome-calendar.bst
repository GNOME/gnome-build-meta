kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/45/gnome-calendar-45.0.tar.xz
  ref: 8c1483cbba4388db410875ed09d64e9003f929b555d704076a6fe7bd7c1e65b2
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
