kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.63/glib-networking-2.63.91.tar.xz
  ref: 714b9dfd88b1b7746eaada9de6eb0b5915f78370cf06c9be16f54a5da1124dcf
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libproxy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: -Dinstalled_tests=true
