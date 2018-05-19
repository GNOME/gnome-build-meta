kind: meson
sources:
- kind: git
  url: git_gnome_org:nautilus
  track: master
depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dselinux=false
