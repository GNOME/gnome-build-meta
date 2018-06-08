kind: autotools
sources:
- kind: tar
  url: https://github.com/fribidi/fribidi/releases/download/v1.0.1/fribidi-1.0.1.tar.bz2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
