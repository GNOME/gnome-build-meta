kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.5.1-5-g89387f701972b2465d61ea26d62d60069feaf681

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
