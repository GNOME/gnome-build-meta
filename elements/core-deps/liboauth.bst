kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:liboauth/liboauth-1.0.3.tar.gz
depends:
- filename: components/nss.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --enable-nss
