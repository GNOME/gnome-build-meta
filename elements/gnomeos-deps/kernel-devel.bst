kind: filter

build-depends:
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true

runtime-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  include:
  - devel
  include-orphans: false
