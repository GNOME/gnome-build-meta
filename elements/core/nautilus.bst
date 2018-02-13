kind: meson
sources:
- kind: git
  url: git_gnome_org:nautilus
  track: master
depends:
- core-deps/gettext.bst
- core-deps/glib.bst
- core-deps/gnome-autoar.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- core-deps/pango.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dselinux=false
