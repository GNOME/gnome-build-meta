kind: manual

sources:
- kind: local
  path: files/gnomeos/iso-extensions/extensions.mount
- kind: local
  path: files/gnomeos/iso-extensions/gnomeos-extensions.service
- kind: local
  path: files/gnomeos/iso-extensions/generator.sh
- kind: local
  path: files/gnomeos/iso-extensions/run-mount-eoslive.mount

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" gnomeos-extensions.service extensions.mount run-mount-eoslive.mount

  - |
    systemdsystemgeneratordir="$(pkg-config --var systemdsystemgeneratordir systemd)"
    install -Dm755 generator.sh "%{install-root}${systemdsystemgeneratordir}/gnomeos-extensions"
