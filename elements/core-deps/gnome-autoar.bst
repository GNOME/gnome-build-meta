kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.5-1-ga5312e6970f5893f6e8f089e7339e127721ecfaa

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
    -Dgtk=false
    -Dvapi=true
