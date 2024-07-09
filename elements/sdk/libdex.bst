kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.7/libdex-0.7.0.tar.xz
  ref: ee789f308e8edcd7dd24553bbb543f4b8e37aee64d0589936fa22b9d1bf69f15
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
