kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calendar/3.30/gnome-calendar-3.30.0.tar.xz
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
