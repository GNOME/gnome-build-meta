kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libmbim/libmbim-1.23.900.tar.xz
  ref: 219d21377e971c2f2c30cb6c555f0ea61f554ea9fb19742a918c104c88967f46
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
