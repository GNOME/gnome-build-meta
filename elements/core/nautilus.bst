kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/nautilus/3.30/nautilus-3.30.2.tar.xz
  ref: 78269bbb0ce538cb9f40dd2feae4fc56dbb7c06651a6b5c9258f6b9631cb4084
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
