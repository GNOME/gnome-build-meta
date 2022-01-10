kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.72/glib-networking-2.72.alpha.tar.xz
  ref: dcdebc28c9c6aa28262af96114c6738cbb2a5ecefa76b07cf4324f06e0e292b9
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
