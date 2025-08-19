kind: manual

sources:
- kind: local
  path: files/gnomeos/wpa-supplicant-config/wpa-supplicant.preset

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

runtime-depends:
- freedesktop-sdk.bst:components/wpa-supplicant.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    systemdsystempresetdir="$(pkg-config --variable systemdsystempresetdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystempresetdir}" wpa-supplicant.preset
  - |
    %{install-extra}
