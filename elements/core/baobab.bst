depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 74a9db167f8d386b9f62c46e49a96ee9bb49369743b12cf8f3df4479ddd24f1c
  url: https://download.gnome.org/sources/baobab/3.29/baobab-3.29.1.tar.xz
