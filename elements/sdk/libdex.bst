kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.6/libdex-0.6.1.tar.xz
  ref: d176de6578571e32a8c0b603b6a5a13fa5f87fb6b5442575b38ec5af16b17a92
build-depends:
- sdk-deps/gi-docgen.bst
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
