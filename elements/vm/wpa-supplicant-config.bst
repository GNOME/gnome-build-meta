kind: manual

sources:
- kind: local
  path: files/vm/wpa-supplicant-config/wpa-supplicant.preset

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

runtime-depends:
- vm/wpa-supplicant.bst

config:
  install-commands:
  - |
    systemdsystempresetdir="$(pkg-config --variable systemdsystempresetdir systemd)"
    install -Dm644 -t "${systemdsystempresetdir}" wpa-supplicant.preset
