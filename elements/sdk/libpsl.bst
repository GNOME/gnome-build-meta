kind: autotools
sources:
- kind: tar
  url: github_com:rockdaboot/libpsl/releases/download/libpsl-0.20.1/libpsl-0.20.1.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
