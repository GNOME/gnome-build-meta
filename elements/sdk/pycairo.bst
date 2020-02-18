kind: distutils
sources:
- kind: tar
  url: github_com:pygobject/pycairo/releases/download/v1.18.0/pycairo-1.18.0.tar.gz
  ref: abd42a4c9c2069febb4c38fe74bfc4b4a9d3a89fea3bc2e4ba7baff7a20f783f
depends:
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  python: python3
