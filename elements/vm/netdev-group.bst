kind: manual
# netdev is referred by wpa-supplicant and avahi

sources:
- kind: local
  path: files/vm/netdev-group/netdev.conf

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - |
    sysusersdir="$(pkg-config --variable sysusersdir systemd)"
    install -Dm644 -t "%{install-root}${sysusersdir}" netdev.conf
