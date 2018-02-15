kind: meson
sources:
- url: https://download.gnome.org/sources/glib-networking/2.55/glib-networking-2.55.90.tar.xz
  kind: tar
  ref: ff0e5bd686d0b956f335d7a0188e8cbebeddf5ade934601d959457d07e34cb08
depends:
- core-deps/glib.bst
- core-deps/meson.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dinstalled_tests=true
