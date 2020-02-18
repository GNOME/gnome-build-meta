kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.62/glib-networking-2.62.3.tar.xz
  ref: 8ca1f86f23a76b5c7640624f7d5490705c78e81375e1741c9a1c41ce7f8f7ff7
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
