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
kind: meson
sources:
- kind: tar
  ref: 7954f274bb17acbb98a2e02239dda85e41bce538a43a7c2052ea77d6007ac440
  url: https://download.gnome.org/sources/gnome-calendar/3.29/gnome-calendar-3.29.90.tar.xz
