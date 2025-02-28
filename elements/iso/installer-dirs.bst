kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir %{install-root}/sys
    mkdir %{install-root}/dev
    mkdir %{install-root}/proc
    mkdir %{install-root}/tmp
