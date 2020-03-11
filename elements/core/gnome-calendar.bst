kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.36/gnome-calendar-3.36.0.tar.xz
  ref: 024f23c7435bdc38e7d740bb3b270491fbe3f4248c6592b40f1ce9811c26beb3
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
