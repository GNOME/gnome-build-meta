kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.70/glib-networking-2.70.rc.tar.xz
  ref: 1fe96573a3ab3b6bacfe9fcc61e238b3cb88afd9c97d668b1dd84d747205b8fa
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
