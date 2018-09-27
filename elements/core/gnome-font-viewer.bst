kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-font-viewer/3.30/gnome-font-viewer-3.30.0.tar.xz
  ref: e5ff9b916438edfccd172f409badca469a4e153a3ad573ad69a22d9abfe896f3
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
