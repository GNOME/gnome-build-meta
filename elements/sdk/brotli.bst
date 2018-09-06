kind: cmake
sources:
- kind: tar
  url: github_com:google/brotli/archive/v1.0.1.tar.gz
  ref: 6870f9c2c63ef58d7da36e5212a3e1358427572f6ac5a8b5a73a815cf3e0c4a6
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
