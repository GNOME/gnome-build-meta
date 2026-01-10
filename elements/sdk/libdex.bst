kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.0/libdex-1.0.0.tar.xz
  ref: 7b8f5c5db3796e14e12e10422e2356766ba830b92815fee70bbc867b5b207f5d
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
