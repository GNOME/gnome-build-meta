kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libqmi/libqmi-1.28.0.tar.xz
  ref: e235f63aa375da322e32ad135671757c5a93b0df59e60dcc17703762b32e9a94
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
