kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: main
  ref: 0.5.1-38-g293baba20f574e4498f318c796ed5e7dc963cce8

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
