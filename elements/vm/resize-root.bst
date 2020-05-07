kind: manual

sources:
- kind: local
  path: files/vm/resize-root/resize-root.service
- kind: local
  path: files/vm/resize-root/resize-root.preset
- kind: local
  path: files/vm/resize-root/resize-root.sh

depends:
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - install -Dm755 resize-root.sh "%{install-root}%{bindir}/resize-root"

  - |
    unitdir="$(pkg-config --variable=systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${unitdir}" resize-root.service

  - |
    presetdir="$(pkg-config --variable=systemdsystempresetdir systemd)"
    install -Dm644 -t "%{install-root}${presetdir}" resize-root.preset
