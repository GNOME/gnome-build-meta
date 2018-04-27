kind: meson
sources:
- kind: git
  url: git_gnome_org:nautilus
  track: master
depends:
- core-deps/gexiv2.bst
- sdk/glib.bst
- core-deps/gnome-autoar.bst
- sdk/gtk+-3.bst
- sdk/pango.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dselinux=false
