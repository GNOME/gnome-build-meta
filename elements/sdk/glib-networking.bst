kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.64/glib-networking-2.64.2.tar.xz
  ref: 45def0715c551f9b0b41a4e4f730ac95f3d5d4f3de8162260fbf9421cff695a7
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
