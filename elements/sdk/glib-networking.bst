kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.68/glib-networking-2.68.3.tar.xz
  ref: d5e34ce6265e44537ffb6d7cccd3fedd0473bd39bf2a1d8a75272bbd598337b4
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
