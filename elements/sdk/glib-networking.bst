kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.72/glib-networking-2.72.1.tar.xz
  ref: 6fc1bedc8062484dc8a0204965995ef2367c3db5c934058ff1607e5a24d95a74
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
