kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.78/glib-networking-2.78.1.tar.xz
  ref: e48f2ddbb049832cbb09230529c5e45daca9f0df0eda325f832f7379859bf09f
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
