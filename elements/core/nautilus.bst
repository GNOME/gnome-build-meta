kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.34/nautilus-3.34.2.tar.xz
  ref: bb06e226b965f479a0b8668c19c8e1762b9d8f039af6817961cc7a8f09e6f8a7
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
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dselinux=false
