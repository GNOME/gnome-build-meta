kind: distutils
sources:
- kind: tar
  url: http://cyberelk.net/tim/data/pycups/pycups-1.9.73.tar.bz2

  ref: c381be011889ca6f728598578c89c8ac9f7ab1e95b614474df9f2fa831ae5335
depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  python: python3
