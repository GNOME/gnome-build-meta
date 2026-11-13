kind: meson

sources:
- kind: git_repo
  url: gnome:libgxps.git
  track: master
  ref: 0.3.2-66-g87d5175aa8866d027e73d6c01e5ddc2f6679407d

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
