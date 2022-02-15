kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.72/glib-networking-2.72.beta.tar.xz
  ref: 74e704cf9a6b5f00b1cdcf5b29bf859edf1d375f87336603c718c7063d1e2355
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
