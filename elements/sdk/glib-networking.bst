kind: meson
sources:
- kind: git_tag
  url: gnome:glib-networking.git
  track: master
  ref: 2.76.0-0-geab226398f9872c381033f7cb3af43dcb66600f4
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
