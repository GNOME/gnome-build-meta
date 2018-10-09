kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-1.4.3.tar.xz
- kind: patch
  path: files/colord/dont-require-docbook2man.patch
depends:
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: |
    -Dargyllcms_sensor=false \
    -Dbash_completion=false \
    -Dlibcolordcompat=false \
    -Dvapi=true
