kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/42/gnome-calendar-42.2.tar.xz
  ref: ae7cc63aae96a02aa599b6d6a348585f4e76f729536f39efb744302b05b5fbbd
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
