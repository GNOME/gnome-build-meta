kind: meson
sources:
- kind: tar
  url: gnome_downloads:glib-networking/2.80/glib-networking-2.80.0.tar.xz
  ref: d8f4f1aab213179ae3351617b59dab5de6bcc9e785021eee178998ebd4bb3acf

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
