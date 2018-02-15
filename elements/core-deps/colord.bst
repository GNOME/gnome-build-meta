kind: meson
sources:
- url: http://www.freedesktop.org/software/colord/releases/colord-1.4.1.tar.xz
  kind: tar
  ref: 2b068fc8298265a7a3b68e7516c7a263394cff57579af0d1c0fb6b7429230555
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
