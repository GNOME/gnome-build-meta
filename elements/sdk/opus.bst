kind: autotools
sources:
- kind: tar
  url: https://archive.mozilla.org/pub/opus/opus-1.2.1.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
