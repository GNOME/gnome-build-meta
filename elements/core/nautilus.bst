kind: meson
sources:
- kind: git
  url: git_gnome_org:nautilus
  track: master
depends:
- core-deps/gexiv2.bst
- core-deps/glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gtk+-3.bst
- core-deps/pango.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dselinux=false
