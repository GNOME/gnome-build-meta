kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.76/glib-networking-2.76.alpha.tar.xz
  ref: dd56c62b41c89b0a734e683a7f06fb89864432d35299cc8277877396f856d5c1
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
