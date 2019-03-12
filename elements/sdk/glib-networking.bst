kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib-networking/2.60/glib-networking-2.60.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled_tests=true
