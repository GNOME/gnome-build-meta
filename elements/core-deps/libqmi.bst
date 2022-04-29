kind: autotools
sources:
- kind: tar
  url: freedesktop_software:libqmi/libqmi-1.30.6.tar.xz
  ref: f19c43859d0ba9100ade45f8d1ea734c5d5e37af4932147ab784f45259aa11b7
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
