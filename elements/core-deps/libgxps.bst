kind: meson

sources:
- kind: git_repo
  url: gnome:libgxps.git
  track: master
  ref: 0.3.2-16-g693b1b74fce64fa3d340ee9fcf29db60ce2c3551

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

variables:
  meson-local: >-
    -Denable-test=false

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
