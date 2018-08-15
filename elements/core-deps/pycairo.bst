depends:
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: distutils
sources:
- kind: tar
  ref: 5bb321e5d4f8b3a51f56fc6a35c143f1b72ce0d748b43d8b623596e8215f01f7
  url: github_com:pygobject/pycairo/releases/download/v1.16.3/pycairo-1.16.3.tar.gz
variables:
  python: python3
