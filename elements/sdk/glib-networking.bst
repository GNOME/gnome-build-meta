kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.80/glib-networking-2.80.rc.tar.xz
  ref: 7ee57eea0f440ce6963920c26c43cf2dd7392ed16ebc659d204fad64b155fd17

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
