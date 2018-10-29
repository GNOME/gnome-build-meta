kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/nautilus/3.30/nautilus-3.30.2.tar.xz
  ref: 267ccac6fa67784fd99de75b7337479758478ec31b34739185693dcd18331045
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
