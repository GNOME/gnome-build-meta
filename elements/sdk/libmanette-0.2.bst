kind: meson
sources:
- kind: tar
  url: gnome_downloads:libmanette/0.2/libmanette-0.2.13.tar.xz
  ref: 287cc2fde0de092919366af757d85e7b3a0248eb1b395344726e97955a77d8ae
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/hidapi.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddoc=true
