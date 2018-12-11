kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/nautilus/3.30/nautilus-3.30.4.tar.xz
  ref: 419f7c27f9f445815f865647a44b5aa75f7b34ada5cf3247f9ead682f6de8ab9
- kind: patch
  path: files/nautilus/0001-file-Null-initialize-autofree-variable.patch
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
