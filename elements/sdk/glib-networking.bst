kind: meson
sources:
- kind: git_repo
  url: gnome:glib-networking.git
  track: master
  ref: 2.80.0-13-gd5efe82095f15b2481d2f259b7ceb07cdd6058f3
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
