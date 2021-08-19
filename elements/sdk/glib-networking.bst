kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.68/glib-networking-2.68.2.tar.xz
  ref: 535ebc054ef697db56a4fffed91bc0e11c8ee1c9acb48aad28c8e1d5c3d5994f
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
