kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calendar/3.30/gnome-calendar-3.30.0.tar.xz
  ref: f9b062764d3ad90e310718bfba4e8d4a64be22d3bfbfc10d66a46b61b4b9771a
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
