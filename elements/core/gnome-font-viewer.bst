kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/3.33/gnome-font-viewer-3.33.90.tar.xz
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
