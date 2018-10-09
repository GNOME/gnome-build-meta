kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib-networking/2.58/glib-networking-2.58.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: -Dinstalled_tests=true
