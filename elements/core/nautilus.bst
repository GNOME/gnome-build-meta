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
kind: meson
sources:
- kind: tar
  ref: 59be0a0a773502b97790ecfcaa98d19ec2a40ac39bc8121fa2957a8f154ac9a6
  url: https://download.gnome.org/sources/nautilus/3.29/nautilus-3.29.90.1.tar.xz
variables:
  meson-local: -Dselinux=false
