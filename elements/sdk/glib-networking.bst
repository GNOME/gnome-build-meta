kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.72/glib-networking-2.72.2.tar.xz
  ref: cd2a084c7bb91d78e849fb55d40e472f6d8f6862cddc9f12c39149359ba18268
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
