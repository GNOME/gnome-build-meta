kind: manual

sources:
- kind: local
  path: files/gnomeos/debug-partition

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" dump-journal.service run-gnomeos-debug.mount

  - |
    udevdir=$(pkg-config --var udevdir udev)
    install -Dm644 -t "%{install-root}${udevdir}/rules.d" 80-debug-partition.rules
