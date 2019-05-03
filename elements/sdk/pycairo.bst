kind: distutils
sources:
- kind: tar
  url: github_com:pygobject/pycairo/releases/download/v1.18.0/pycairo-1.18.0.tar.gz
depends:
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  python: python3
