kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/43/gnome-calendar-43.alpha.tar.xz
  ref: 54938b13326ad0be31629fd12fdfed260a7403c0087a15344da358c60c46cae7
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
