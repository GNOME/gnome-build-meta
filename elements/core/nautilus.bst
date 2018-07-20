kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/nautilus/3.28/nautilus-3.28.1.tar.xz
  ref: 9ce878fc9d9f950475c504066ce5f8e98a8cfbf15051724469e865ea85bab0a5
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
