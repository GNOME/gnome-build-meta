kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calendar/3.28/gnome-calendar-3.28.2.tar.xz
  ref: dcf72dd7850a8a29dd16ebd2594acd83ac9c35b83f9f6ee87a7c3ae49eeddc74
depends:
- core-deps/appstream-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libdazzle.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
