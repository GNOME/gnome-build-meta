kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.76/glib-networking-2.76.1.tar.xz
  ref: 5c698a9994dde51efdfb1026a56698a221d6250e89dc50ebcddda7b81480a42b
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
