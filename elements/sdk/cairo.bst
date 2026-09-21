kind: meson
sources:
- kind: tar
  url: cairo:releases/cairo-1.18.6.tar.xz
  ref: 1c767308174337a74694da0f3ec069c271452163a1ef4540964c50c301f157d4
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/lzo.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/cairo-sphinx'
        - '%{bindir}/cairo-trace'
        - '%{libdir}/libcairo-script-interpreter.so'
        - '%{libdir}/libcairo-gobject.so'
        - '%{libdir}/libcairo.so'
        - '%{libdir}/cairo/libcairo-trace.so'
variables:
  # We don't built libspectre and it would depend on ghostscript
  # our libbfd is doesn't have what's required for symbol-lookup
  # tests: tries to pull poppler-glib which causes a circular dep
  meson-local: >-
    -Dspectre=disabled
    -Dsymbol-lookup=disabled
    -Dtests=disabled
