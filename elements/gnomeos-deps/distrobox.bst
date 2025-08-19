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
  - |
    %{install-extra}

sources:
- kind: tar
  url: github_files:89luca89/distrobox/archive/refs/tags/1.8.1.2.tar.gz
  ref: 3ecbce9b8c5b5df941f986798ffa6ea7fdf742223d42204207974c4323d5b9fc
