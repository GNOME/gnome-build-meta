kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/43/gnome-calendar-43.rc.tar.xz
  ref: 86c578627183cbe7b0711abdf816f084f0ae50fc6389e89acef4006aa51cbfe0
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
