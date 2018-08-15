depends:
- core-deps/glib.bst
- core-deps/vala.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 48a726f2d8d842075b55a6325857a8d4129c58284ac58aaaf594f9dedc9fdab0
  url: https://download.gnome.org/sources/dconf/0.29/dconf-0.29.1.tar.xz
variables:
  meson-local: -Dbash_completion=false
