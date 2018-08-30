kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/nautilus/3.29/nautilus-3.29.92.tar.xz
  ref: 369785f70d2b6e317fba6dc913ad9b50ee37499bc035e32600ca288393895c26
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
