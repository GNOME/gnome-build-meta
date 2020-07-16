kind: autotools
sources:
- kind: tar
  url: https://gitlab.freedesktop.org/spice/libcacard/uploads/56cb2499198e78e560a1d4c716cd8ab1/libcacard-2.7.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:bootstrap-import.bst
