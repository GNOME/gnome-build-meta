kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-calendar/3.28/gnome-calendar-3.28.1.tar.xz
  kind: tar
  ref: 06e7d5d47194dea9f4121f9b9859201e3406a680b35cf6f77fb2502cadfd4cc9
depends:
- core-deps/appstream-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libdazzle.bst
- core-deps/meson.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- base.bst
