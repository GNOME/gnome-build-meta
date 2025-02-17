kind: manual

sources:
- kind: local
  path: files/gnomeos/live

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  build-commands:
  - |
    gcc ${CFLAGS} ${LDFLAGS} -std=gnu17 -W -Wall -Werror swap-verity.c $(pkg-config --libs --cflags devmapper) -o swap-verity

  - |
    gcc ${CFLAGS} ${LDFLAGS} -std=gnu17 -W -Wall -Werror generator.c -o generator

  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" gnomeos-repart-ramdisk.service

  - |
    udevdir="$(pkg-config --var udevdir udev)"
    install -Dm644 -t "%{install-root}${udevdir}/rules.d" rules.d/90-ramfs-root.rules rules.d/90-gnomeos-iso.rules

  - |
    install -Dm644 -t "%{install-root}%{indep-libdir}/repart.ramdisk.d" repart.d/50-root.conf

  - |
    systemdsystemgeneratordir="$(pkg-config --var systemdsystemgeneratordir systemd)"
    install -Dm755 generator "%{install-root}${systemdsystemgeneratordir}/gnomeos-live"

  - |
    install -Dm755 install.sh "%{install-root}%{libexecdir}/gnomeos/pret-a-booter-install"

  - |
    install -Dm755 -t "%{install-root}%{libexecdir}/gnomeos" swap-verity
