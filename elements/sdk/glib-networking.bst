kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.68/glib-networking-2.68.rc.tar.xz
  ref: 5f2f62db8a75e2ec5462af12cb59157fb17500dca172c637a88c59053d52115b
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
