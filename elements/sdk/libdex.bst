kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 1.2.alpha-2-g7baf93d0388e539ef2508d75b41c9260fd807088

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
