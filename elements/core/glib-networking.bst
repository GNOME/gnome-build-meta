kind: meson
sources:
- url: https://download.gnome.org/sources/glib-networking/2.56/glib-networking-2.56.0.tar.xz
  kind: tar
  ref: 47fd10bcae2e5039dc5f685e3ea384f48e64a6bee26d755718f534a978477c93
depends:
- core-deps/glib.bst
- core-deps/meson.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dinstalled_tests=true
