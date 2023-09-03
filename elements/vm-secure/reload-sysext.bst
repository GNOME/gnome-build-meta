kind: manual

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

sources:
- kind: local
  path: files/vm/reload-sysext/reload-sysext.service
- kind: local
  path: files/vm/reload-sysext/restart-sysext-services.target

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --variable systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" reload-sysext.service
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" restart-sysext-services.target
    install -d -m755 "%{install-root}${systemdsystemunitdir}/sysinit.target.wants"
    ln -s ../reload-sysext.service "%{install-root}${systemdsystemunitdir}/sysinit.target.wants/"
