kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.70/glib-networking-2.70.beta.tar.xz
  ref: 264c2ba7ce7bbb6899b01e773b1d21085a86b38a12b781ed335908625d4ddf06
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
