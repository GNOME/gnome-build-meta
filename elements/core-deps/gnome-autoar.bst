kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.5.1-2-g026d0b778fb4f600fd545d15b65b05f5a7a69e20

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvapi=true
