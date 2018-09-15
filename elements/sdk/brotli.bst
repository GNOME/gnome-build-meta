kind: cmake
sources:
- kind: tar
  url: github_com:google/brotli/archive/v1.0.5.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
