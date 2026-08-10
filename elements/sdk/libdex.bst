kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.2/libdex-1.2.beta.tar.xz
  ref: 23f8b8c3be6a35f80cf7b23f81f47f20119739bb5e9b4f55ba5ec5d9d2718b19
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
