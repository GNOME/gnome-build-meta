kind: autotools
sources:
- kind: tar
  url: https://archive.mozilla.org/pub/opus/opus-1.2.1.tar.gz
  ref: cfafd339ccd9c5ef8d6ab15d7e1a412c054bf4cb4ecbbbcc78c12ef2def70732
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
