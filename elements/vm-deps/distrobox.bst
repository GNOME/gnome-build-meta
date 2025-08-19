kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- freedesktop-sdk.bst:components/podman.bst

config:
  install-commands:
  - |
    bash install --prefix '%{install-root}%{prefix}'
  - |
    %{install-extra}

sources:
- kind: tar
  url: github_files:89luca89/distrobox/archive/refs/tags/1.5.0.2.tar.gz
  ref: 84262770026af306d1e263258445d91790bdedecf30c813316a45adeb2a67de6
