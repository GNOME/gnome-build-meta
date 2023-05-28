kind: pip

sources:
- kind: tar
  url: pypi:fc/48/40c8961b39daf2af0ad037ea45e2f9d9a59c753bd1c9ebfc6a584fa4e901/pyroaring-0.4.2.tar.gz
  ref: 1413ab1db044032eac11ed7e9b52e93ebc26f637b299f8047ee46b03c2d828b2

build-depends:
- freedesktop-sdk.bst:components/cython.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

environment:
  # -march=native can be problematic and could generate binary that
  # does not work on other builders. It is also not available on
  # ppc64
  ARCHI: generic
