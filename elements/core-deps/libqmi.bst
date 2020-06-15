kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libqmi/libqmi-1.25.900.tar.xz
  ref: c7f51d2e94c05d48a1fa6647fdcffcf85abdabc81169fcf9d7c4e3b314712629
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-more-warnings=no
