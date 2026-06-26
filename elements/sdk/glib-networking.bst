kind: meson
sources:
- kind: git_repo
  url: gnome:glib-networking.git
  track: master
  ref: 2.90.alpha-0-ge23c430a41a47884064449c76a7927eafdba0d08
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
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
