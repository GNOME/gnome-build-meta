kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libqmi/libqmi-1.26.0.tar.xz
  ref: 7f0429e0ae58792e21512d09ca2412537840ea42696762795af1284a65fd6e40
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
