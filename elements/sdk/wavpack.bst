kind: autotools
sources:
- kind: tar
  url: http://wavpack.com/wavpack-5.1.0.tar.bz2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
