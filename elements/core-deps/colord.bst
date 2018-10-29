kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-1.4.3.tar.xz
  ref: 9a8e669ee1ea31632bee636cc57353f703c2ea9b64cd6e02bbaabe9a1e549df7
- kind: patch
  path: files/colord/dont-require-docbook2man.patch
depends:
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: |
    -Dargyllcms_sensor=false \
    -Dbash_completion=false \
    -Dlibcolordcompat=false \
    -Dvapi=true
