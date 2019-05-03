kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/volume_key/volume_key-0.3.12.tar.xz
depends:
- core-deps/cryptsetup.bst
- sdk/glib.bst
- filename: components/gpgme.bst
  junction: freedesktop-sdk.bst
- filename: components/nss.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: admin
  conf-local: >
    --without-python
    --with-python3
