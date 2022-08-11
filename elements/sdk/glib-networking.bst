kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.74/glib-networking-2.74.beta.tar.xz
  ref: 748d7c1bbf4ecceb0fe724b9414bd261d2752ae5343d5fb47b432961941a7c08
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
  meson-local: >-
    -Dinstalled_tests=true
