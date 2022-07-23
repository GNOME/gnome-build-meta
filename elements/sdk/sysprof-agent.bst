kind: filter

build-depends:
- sdk-deps/sysprof.bst

runtime-depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/libunwind.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  include:
  - sysprof-agent
  include-orphans: false
