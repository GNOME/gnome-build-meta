kind: manual

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

sources:
- kind: local
  path: files/vm/systemd-firstboot/no-prompt.conf

config:
  install-commands:
  - |
    dir="$(pkg-config --variable=systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${dir}/systemd-firstboot.service.d" no-prompt.conf
