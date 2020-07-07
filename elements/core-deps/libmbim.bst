kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libmbim/libmbim-1.24.0.tar.xz
  ref: 3d495cec3becfd02731ceac67a5ad7e0f1b328395137024d7cb91d31f00e1196
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-more-warnings=no
