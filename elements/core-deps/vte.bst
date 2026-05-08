kind: meson

sources:
- kind: git_repo
  url: gnome:vte.git
  track: master
  ref: 0.81.0-81-gfc2760558f98f8a5808154264c3f4b74d7a3e19c

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- core-deps/fast-float.bst
- core-deps/simdutf.bst
- freedesktop-sdk.bst:components/fmtlib.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk3=false
    -Dgtk4=true
    -Ddocs=true
    -Dglade=false
    -Dapp=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libvte-2.91.so'
