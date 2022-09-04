kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.74/glib-networking-2.74.rc.tar.xz
  ref: 00f2e4a361ebe9b11dac855461ca2de0e2c490c418c704994d891a379b78756c
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
