kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-calendar
  track: master
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
