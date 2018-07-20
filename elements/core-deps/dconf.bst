kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/dconf/0.28/dconf-0.28.0.tar.xz
  ref: 61d3b3865ef58b729c3b39aa0979f886c014aa8362f93dcfc74bf5648ed9c742
depends:
- core-deps/glib.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
