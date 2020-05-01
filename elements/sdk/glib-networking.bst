kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.64/glib-networking-2.64.2.tar.xz
  ref: a4c346def7d817467d79a95c23b3ccf22e4df1548870726b63396400852daf72
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
