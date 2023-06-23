kind: manual

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst

config:
  install-commands:
  - |
    systemdsystemgeneratordir="$(pkg-config --var systemdsystemgeneratordir systemd)"
    install -Dm755 -t "%{install-root}${systemdsystemgeneratordir}" devel-extension-generator

sources:
- kind: local
  path: files/vm/devel-extension-generator
