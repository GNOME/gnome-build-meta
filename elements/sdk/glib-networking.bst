kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.68/glib-networking-2.68.alpha.tar.xz
  ref: 92e285a47bca9e0bcc7a925a9d7dc8f7ecaff682fa582a5d31b27d001ae1792d
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
