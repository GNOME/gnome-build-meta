kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.90/glib-networking-2.90.0.tar.xz
  ref: 83a75e3d9c36b66ee86d3281c2fc997816101968a5126ba322b2acb9a74dd8c0
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
