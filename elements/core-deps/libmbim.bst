kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libmbim/libmbim-1.24.6.tar.xz
  ref: 760465caaa1ccd699c14290e9791da456d5300dd11ebf4c1486151033e875dfd
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
