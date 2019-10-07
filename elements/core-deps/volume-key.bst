kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/volume_key/volume_key-0.3.12.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/cryptsetup.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --without-python
    --with-python3
