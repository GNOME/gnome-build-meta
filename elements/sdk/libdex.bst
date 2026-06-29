kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.2/libdex-1.2.alpha.tar.xz
  ref: 0bda1a9dec60a4f9d3cb8b9d5515a97965a0d25377733290b270702fe45ff6a3
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
