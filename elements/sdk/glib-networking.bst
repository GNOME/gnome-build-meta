kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.62/glib-networking-2.62.3.tar.xz
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- filename: components/ca-certificates.bst
  junction: freedesktop-sdk.bst
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstalled_tests=true
