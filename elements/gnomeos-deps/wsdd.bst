kind: manual

sources:
- kind: git_repo
  url: github:christgau/wsdd.git
  track: v*
  ref: v0.8-0-g486e054ec73bc12a79d465d1fbd0c11c12b0f014

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
