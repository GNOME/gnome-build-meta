kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-calendar/3.27/gnome-calendar-3.27.90.tar.xz
  kind: tar
  ref: 5bd11c576b5c8a0aa15c4e0a10e110783a7e6ab071035accee8f0c3f62555862
depends:
- core-deps/appstream-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libdazzle.bst
- core-deps/meson.bst
- core/gsettings-desktop-schemas.bst
- base.bst
