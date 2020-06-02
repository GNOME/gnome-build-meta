kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libqmi/libqmi-1.24.14.tar.xz
  ref: 208fe3e94dabe1d8117d1023d841737b6fe92aaff21ef8f35bbed15417ee507f
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-more-warnings=no
