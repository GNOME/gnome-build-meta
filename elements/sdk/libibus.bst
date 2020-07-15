kind: filter

build-depends:
- sdk-deps/ibus.bst

runtime-depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  include:
    - libibus
  include-orphans: false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libibus-1.0.so'
