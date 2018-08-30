kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-font-viewer/3.28/gnome-font-viewer-3.28.0.tar.xz
  ref: a327109563405de531f729d2fa405b69a5b38d2d02626a2dfe6895229c10b79a
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
