kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.62/glib-networking-2.62.4.tar.xz
  ref: c18f289eec480fdce12044c0a06f77521edf9f460d16ad4213de61f2a3b294cf
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
