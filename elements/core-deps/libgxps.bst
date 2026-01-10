kind: meson

sources:
- kind: tar
  url: gnome_downloads:libgxps/0.3/libgxps-0.3.2.tar.xz
  ref: 6d27867256a35ccf9b69253eb2a88a32baca3b97d5f4ef7f82e3667fa435251c
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Denable-test=false

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
