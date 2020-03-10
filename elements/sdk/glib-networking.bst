kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.64/glib-networking-2.64.0.tar.xz
  ref: 5cda27d45447160261d4bb77fc2f9766fc8b07dbd471ba2336a5fcb38521a1ba
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
