kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.80/glib-networking-2.80.alpha.tar.xz
  ref: 33630935a9cc9f188f45b8c395a6733a1c87c6c14b1a634256b80f95c1998fdf
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
