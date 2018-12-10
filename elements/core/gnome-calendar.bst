kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calendar/3.30/gnome-calendar-3.30.1.tar.xz
  ref: 5a186ea161ee7620492127a4a32b5522196d3cb7a15caaf99fa8219f843a71ab
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
