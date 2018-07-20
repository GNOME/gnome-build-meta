kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-backgrounds/3.28/gnome-backgrounds-3.28.0.tar.xz
  ref: b25b963d9d1ce076b489ef1e85c6540166f2312c77132f4ec0ecc90f3da8f1e1
depends:
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
