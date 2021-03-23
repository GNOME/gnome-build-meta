kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.68/glib-networking-2.68.0.tar.xz
  ref: 0b235e85ad26b3c0d12255d0963c460e5a639c4722f78e2a03e969e224b29f6e
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
