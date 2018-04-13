kind: meson
sources:
- url: http://www.freedesktop.org/software/colord/releases/colord-1.4.2.tar.xz
  kind: tar
  ref: 4c70d5052a9c96da51fa57e80d6dc97ca642943d5b9940a196c990dfe84beca7
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libgudev.bst
- core-deps/libgusb.bst
- core-deps/meson.bst
- core-deps/vala.bst
- base.bst
variables:
  meson-local: -Denable-bash-completion=false -Denable-vala=true
