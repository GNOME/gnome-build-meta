kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib-networking/2.57/glib-networking-2.57.92.tar.xz
  ref: 80c8d905bb32dad47f53a9c89faf2dfd48c85ffb284689d3a589234660b2c551
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
