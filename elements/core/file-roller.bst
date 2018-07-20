kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/file-roller/3.29/file-roller-3.29.1.tar.xz
  ref: 6a8556effb9db4fc02881c600e861630e8f1019ca9863aa07e82e8676c7a9fce
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
