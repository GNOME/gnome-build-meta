kind: meson

sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: main
  ref: 1.10.8-29-g3ec1f2c70b60c2d3e9355761edfb8fe0a6c204c2

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/python3-docutils.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk_doc=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
