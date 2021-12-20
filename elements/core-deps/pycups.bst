kind: distutils
sources:
- kind: tar
  url: http://cyberelk.net/tim/data/pycups/pycups-1.9.73.tar.bz2

depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  python: python3
