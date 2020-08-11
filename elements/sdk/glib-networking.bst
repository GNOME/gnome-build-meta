kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.65/glib-networking-2.65.90.tar.xz
  ref: 0b4df5f643b7e08223690a1249ce302329b6156f2640d7b0217f192b330af566
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
