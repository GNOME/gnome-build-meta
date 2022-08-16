# iw 
kind: make
sources:
- kind: git
  url: https://git.sipsolutions.net/iw.git
  track: v5.19
  ref: c2a322113d5b4320ce39823d96dce8ac527a397a
build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gzip.bst
depends:
- freedesktop-sdk.bst:components/libnl.bst
