kind: filter

build-depends:
- vm/v4l2loopback.bst

runtime-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  include:
  - utils
  include-orphans: false
