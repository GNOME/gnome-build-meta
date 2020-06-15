kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.64/glib-networking-2.64.3.tar.xz
  ref: 937a06b124052813bfc0b0b86bff42016ff01067582e1aca65bb6dbe0845a168
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
