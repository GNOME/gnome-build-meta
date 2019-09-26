kind: distutils
sources:
- kind: tar
  url: github_com:pygobject/pycairo/releases/download/v1.18.0/pycairo-1.18.0.tar.gz
build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
depends:
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  python: python3
