depends:
- core-deps/glib.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 6c093fa7d2c115232839fe28808f29153e201e43924111e2090a9b80cadd180e
  url: https://download.gnome.org/sources/glib-networking/2.57/glib-networking-2.57.90.tar.xz
variables:
  meson-local: -Dinstalled_tests=true
