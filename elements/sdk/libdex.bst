kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 1.2.beta-3-gdbd3b455702f1e72ec9e28fad25c2e11363443cb

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
