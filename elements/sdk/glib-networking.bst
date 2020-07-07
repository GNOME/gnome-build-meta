kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.65/glib-networking-2.65.1.tar.xz
  ref: 45a4a22651f0268b45c26ab4a16282f06f2995fdaf5aa8d221e535099cdd7783
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
