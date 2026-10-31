kind: meson
sources:
- kind: git_repo
  url: gnome:glib-networking.git
  track: master
  ref: 2.90.1-2-gdf7caf792f1c23e8f803ab97e430a264a1daae0c
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
