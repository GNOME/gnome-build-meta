kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.72/glib-networking-2.72.0.tar.xz
  ref: 100aaebb369285041de52da422b6b716789d5e4d7549a3a71ba587b932e0823b
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
