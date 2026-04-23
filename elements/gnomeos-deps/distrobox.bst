kind: manual

sources:
- kind: git_repo
  url: github:89luca89/distrobox.git
  track: '*.*'
  exclude:
  - '*-rc*'
  ref: 1.8.2.5-0-g40c3cd724faa434aeb0a23e28776665b92de68bd

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
