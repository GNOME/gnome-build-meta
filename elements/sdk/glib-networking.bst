kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.63/glib-networking-2.63.92.tar.xz
  ref: ea3ee062ebdc752437e2b576335b2cdebe489fcaddea48462b761169ed8d3c4d
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
