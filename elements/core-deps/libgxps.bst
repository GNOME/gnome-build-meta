kind: meson

sources:
- kind: git_repo
  url: gnome:libgxps.git
  track: master
  ref: 0.3.2-40-gba8d4f6981f7ffc3572fc0afcb3a6b2637be3859

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
