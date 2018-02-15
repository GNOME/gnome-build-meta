kind: meson
sources:
- url: https://download.gnome.org/sources/nautilus/3.27/nautilus-3.27.90.tar.xz
  kind: tar
  ref: 292ed1d1f7d7c5531bc2c0c78e451f7c357a37a5c05347b860b32b4eb20fa81a
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
