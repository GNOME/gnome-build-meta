kind: filter

build-depends:
- freedesktop-sdk.bst:bootstrap/elfutils.bst

runtime-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  include:
  - devel
  include-orphans: false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/lib*.so'
    overlap-whitelist:
    - '**'
