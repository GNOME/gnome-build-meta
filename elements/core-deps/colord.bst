kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-1.4.4.tar.xz
  ref: 9a0fe80160bf88efddb582a9fc0169f56065276dc3882c47dddb9eecd048c0a5
depends:
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/polkit.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/lcms.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dargyllcms_sensor=false -Dbash_completion=false -Dlibcolordcompat=false
    -Dman=false -Dvapi=true
