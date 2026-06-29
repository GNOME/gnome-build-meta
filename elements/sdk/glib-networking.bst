kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.90/glib-networking-2.90.alpha.tar.xz
  ref: be7fbc29ab11cd90a6aa1a82524745cd88331630b9a644323a5b907f793fdfc3
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libproxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dinstalled_tests=true
