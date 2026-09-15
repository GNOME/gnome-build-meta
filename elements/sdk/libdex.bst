kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.2/libdex-1.2.0.tar.xz
  ref: 69f5b244c21f6402831c3ab8af85a01772f72fb118677388436f12f32bfb06d9
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
