kind: meson
sources:
- kind: git_repo
  url: gnome:glib-networking.git
  track: master
  ref: 2.80.0.97-40-g07fe5120e68db576a12ae0caafab26edcdfac29c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libproxy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dinstalled_tests=true
