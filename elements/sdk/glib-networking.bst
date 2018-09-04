kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib-networking/2.58/glib-networking-2.58.0.tar.xz
  ref: bdfa0255e031b8ee003cc283002536b77ee76450105f1dc6ab066b9bf4330068
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
