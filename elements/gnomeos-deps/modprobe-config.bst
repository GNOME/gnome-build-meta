kind: manual

sources:
- kind: local
  path: files/modprobe-config/soc-button-array.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 soc-button-array.conf "%{install-root}%{indep-libdir}/modprobe.d/soc-button-array.conf"
