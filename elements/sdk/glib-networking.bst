kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.63/glib-networking-2.63.91.tar.xz
  ref: 1d59d763638c633bb809338e36b195ea3e692fc456d6d16e4e66a6cdfebd2f1a
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
