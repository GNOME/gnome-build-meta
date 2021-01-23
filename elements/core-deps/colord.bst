kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-1.4.5.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgusb.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dargyllcms_sensor=false
    -Dbash_completion=false
    -Dlibcolordcompat=false
    -Dman=false
    -Dvapi=true
