kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/44/gnome-calendar-44.rc.tar.xz
  ref: 75a3433cca38c8572da186d90588e2e74064202f6b56f78c798b9e134367264e
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
