kind: manual

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/erofs-utils.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 make-layer.py '%{install-root}%{bindir}/make-layer'

sources:
- kind: local
  path: files/gnomeos/make-layer.py
