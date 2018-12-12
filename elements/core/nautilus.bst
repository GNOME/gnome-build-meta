kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/nautilus/3.30/nautilus-3.30.5.tar.xz
  ref: dbbe3f7c81ecbeab0c1c4be30100ac7ef359c093ef39f334f389a395fc259990
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
