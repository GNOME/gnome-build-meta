kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-calendar/3.38/gnome-calendar-3.38.2.tar.xz
  ref: d121bb34b08b6ea601f5dbba43a4b1613a6e5493fc0b1e2ecc90c666711a912d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- core-deps/libhandy-0.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
