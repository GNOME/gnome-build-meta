kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/3.32/gnome-font-viewer-3.32.0.tar.xz
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
