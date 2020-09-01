kind: filter

build-depends:
- sdk-deps/gvfs.bst

runtime-depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  include:
  - gvfs-client
  include-orphans: false
