kind: distutils
sources:
- kind: tar
  url: github_com:pygobject/pycairo/releases/download/v1.16.3/pycairo-1.16.3.tar.gz
  ref: 5bb321e5d4f8b3a51f56fc6a35c143f1b72ce0d748b43d8b623596e8215f01f7
depends:
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  python: python3
