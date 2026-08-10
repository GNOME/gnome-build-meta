kind: meson

sources:
- kind: tar
  url: gnome_downloads:vte/0.84/vte-0.84.1.tar.xz
  ref: aca1caa8478aebcdbb1d67897fb3511eb7601debae6810e16a15b6fa25f31ac8
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
