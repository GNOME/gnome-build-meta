kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-calendar
  track: master
depends:
- core-deps/evolution-data-server.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gtk+-3.bst
- core-deps/libdazzle.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
