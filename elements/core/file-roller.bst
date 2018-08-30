kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/file-roller/3.29/file-roller-3.29.91.tar.xz
  ref: ee57d91c0d624e72d78cad56e6da3f1826b6009c2ca0930d2be36d842ef38fd0
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
