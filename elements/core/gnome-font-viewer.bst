kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-font-viewer/3.30/gnome-font-viewer-3.30.0.tar.xz
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
