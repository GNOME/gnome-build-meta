kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.5.1-18-g7baed94d6578c9360b81b473136c8f401d5790ec

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
