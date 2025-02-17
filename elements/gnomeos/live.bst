kind: manual

sources:
- kind: local
  path: files/gnomeos/live

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" gnomeos-repart-ramdisk.service

  - |
    udevdir="$(pkg-config --var udevdir udev)"
    install -Dm644 -t "%{install-root}${udevdir}/rules.d" rules.d/90-ramfs-root.rules

  - |
    install -Dm644 -t "%{install-root}%{indep-libdir}/repart.ramdisk.d" repart.d/50-root.conf

  - |
    install -Dm644 -t "%{install-root}%{indep-libdir}/modprobe.d" modprobe.d/brd.conf

  - |
    systemdsystemgeneratordir="$(pkg-config --var systemdsystemgeneratordir systemd)"
    install -Dm755 generator.sh "%{install-root}${systemdsystemgeneratordir}/gnomeos-live"

  - |
    install -Dm755 install.sh "%{install-root}/usr/libexec/gnomeos/pret-a-booter-install"
