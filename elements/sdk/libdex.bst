kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.8/libdex-0.8.0.tar.xz
  ref: 659ab5d0eb7f10bd36af0cde08055158987690b9714e7f5b001c788ec1d01a25
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
