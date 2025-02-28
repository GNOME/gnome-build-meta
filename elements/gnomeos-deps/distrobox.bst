kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- freedesktop-sdk.bst:components/podman.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    bash install --prefix '%{install-root}%{prefix}'

sources:
- kind: tar
  url: github_files:89luca89/distrobox/archive/refs/tags/1.8.0.tar.gz
  ref: 72d8d825b6aad63e03e0b92376e6ead9c053c1e676acab3c7eaac9be2929d0a2
