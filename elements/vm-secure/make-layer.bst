kind: manual

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:snap-images/squashfs-tools.bst

config:
  install-commands:
  - |
    install -Dm755 make-layer.py '%{install-root}%{bindir}/make-layer'

sources:
- kind: local
  path: files/vm/make-layer.py
