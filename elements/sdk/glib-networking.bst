kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.74/glib-networking-2.74.alpha.tar.xz
  ref: 6098656535eaf4d29fa524e69969486ccc276cb08cf4f9ab0851d8a389d8e14f
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
