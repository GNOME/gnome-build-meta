kind: manual

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

sources:
- kind: local
  path: files/gnomeos/reload-sysext/reload-sysext.service

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --variable systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" reload-sysext.service
    install -d -m755 "%{install-root}${systemdsystemunitdir}/sysinit.target.wants"
    ln -s ../reload-sysext.service "%{install-root}${systemdsystemunitdir}/sysinit.target.wants/"
