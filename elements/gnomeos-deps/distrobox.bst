kind: manual

sources:
- kind: git_repo
  url: github:89luca89/distrobox.git
  track: '*.*'
  exclude:
  - '*-rc*'
  ref: 1.8.2.4-0-g08e4963711ee1c556f8eb44582a3aa0fbb4c9a77

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

runtime-depends:
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    bash install --prefix '%{install-root}%{prefix}'
  - |
    %{install-extra}
