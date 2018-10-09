kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/file-roller/3.31/file-roller-3.31.1.tar.xz
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
