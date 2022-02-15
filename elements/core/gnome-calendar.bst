kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/42/gnome-calendar-42.beta.tar.xz
  ref: 4d335c1adeed8ea2e34ae1e6b79b95b65169687b268e396c7a4e25f7ead97651
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
