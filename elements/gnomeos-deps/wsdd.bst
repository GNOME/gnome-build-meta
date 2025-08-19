kind: manual

sources:
- kind: git_repo
  url: github:christgau/wsdd.git
  track: v*
  ref: v0.9-0-ge9325b5ce312423f9b83f7175949694097a161b2

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 src/wsdd.py "%{install-root}%{bindir}/wsdd"

  - |
    install -Dm644 -t "%{install-root}%{mandir}/man8" man/wsdd.8

  - |
    %{install-extra}
