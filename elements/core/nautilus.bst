kind: meson
sources:
- kind: tar
  url: gnome_downloads:nautilus/3.34/nautilus-3.34.3.tar.xz
  ref: 02d984b794f3a34a7aa66bf5c70cc2a7780de55bd900504fb1014931781db36d
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
