kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:liboauth/liboauth-1.0.3.tar.gz
- kind: patch
  path: files/liboauth/liboauth-openssl_1_1.patch
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
