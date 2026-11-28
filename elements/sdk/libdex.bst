kind: meson

sources:
- kind: git_repo
  url: gnome:libdex.git
  track: main
  ref: 1.2.0-61-g8d3e7cd79b75a6aa68960e1d99bdc94d7dea1bd3

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

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libexecdir}/libdex-1/dex-gdbus-codegen-extension.py'
