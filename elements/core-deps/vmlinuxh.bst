kind: manual

sources:
- kind: local
  path: files/vmlinuxh

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - mkdir -p '%{install-root}%{includedir}'
  - cp -rT '%{gcc_triplet}' '%{install-root}%{includedir}/%{gcc_triplet}'
