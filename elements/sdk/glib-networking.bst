kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.76/glib-networking-2.76.beta.tar.xz
  ref: c0ab5b0f358332521058eb07f3c9a3fdac0e7a5201c4130a567bd9d6cd3f1da1
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
