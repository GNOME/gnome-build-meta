kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgudev/232/libgudev-232.tar.xz
  ref: ee4cb2b9c573cdf354f6ed744f01b111d4b5bed3503ffa956cefff50489c7860
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
variables:
  conf-local: --disable-umockdev
