kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.90/glib-networking-2.90.1.tar.xz
  ref: ea95636590098355a05e3027579dba1a9a950b05e456b2488ea03d82e4b6c18a
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
