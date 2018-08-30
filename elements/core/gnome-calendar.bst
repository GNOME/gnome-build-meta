kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calendar/3.29/gnome-calendar-3.29.92.tar.xz
  ref: 379e62e41f8e66aea65bc2827071e46f0d03b23ca9ebe6ccd07c2f1180d01892
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
