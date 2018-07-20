kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib-networking/2.57/glib-networking-2.57.3.tar.xz
  ref: 91e3b97685f747e0d829ac59a331278e422be26a9360e44eed3ff6a5b9b0395b
depends:
- core-deps/glib.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled_tests=true
