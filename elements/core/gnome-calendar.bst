kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.36/gnome-calendar-3.36.1.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- core-deps/libhandy.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
