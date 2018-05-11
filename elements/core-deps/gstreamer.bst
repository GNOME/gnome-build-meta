kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.14.0.tar.xz
  ref: fc361367f0d4b780a868a8833f9f30b9c9f4ac9faea4e6b251db8b4b0398466e
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/meson.bst
- base.bst
variables:
  meson-local: -Ddisable_gtkdoc=true
