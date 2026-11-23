kind: manual

sources:
- kind: git_repo
  url: github:89luca89/distrobox.git
  track: '*.*'
  exclude:
  - '*-rc*'
  ref: 1.8.2.6-0-g75eb465644f6d7278925c2d17107eea599532026

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
  - |
    %{install-extra}
