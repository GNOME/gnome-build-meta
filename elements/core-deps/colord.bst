kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-1.4.4.tar.xz
depends:
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/polkit.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dargyllcms_sensor=false -Dbash_completion=false -Dlibcolordcompat=false
    -Dman=false -Dvapi=true
