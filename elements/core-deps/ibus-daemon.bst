kind: filter

build-depends:
- sdk-deps/ibus.bst

runtime-depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libibus.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  exclude:
    - libibus
