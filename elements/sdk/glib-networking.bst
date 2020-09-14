kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.66/glib-networking-2.66.0.tar.xz
  ref: c5d7be2437fdd196eebfb70c4517b96d3ba7ec13bd496318b8f02dea383e0099
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
