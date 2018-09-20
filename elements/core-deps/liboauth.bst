kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:liboauth/liboauth-1.0.3.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
- filename: base/openssl-1.0.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/openssl-1.0-runtime-only.bst
  junction: freedesktop-sdk.bst
  type: runtime
