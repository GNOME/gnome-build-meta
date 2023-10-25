kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/45/gnome-calendar-45.1.tar.xz
  ref: 7fa8507543865aa7432bb5319830c87158b5447ca09cca45b607dc6796c71008
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
