kind: manual

sources:
- kind: git_repo
  url: github:89luca89/distrobox.git
  track: '*.*'
  ref: 1.8.2.2-0-ga7b2437dbee94ab465a7403945e8eabc9dd7d859

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
