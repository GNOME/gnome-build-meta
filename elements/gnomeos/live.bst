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
    gcc ${CFLAGS} -std=gnu17 -W -Wall -Werror kernel-cmdline.c -c -o kernel-cmdline.o
    gcc ${CFLAGS} -std=gnu17 -W -Wall -Werror kmsg.c -c -o kmsg.o
    gcc ${CFLAGS} -std=gnu17 -W -Wall -Werror generator.c -c -o generator.o
    gcc ${CFLAGS} ${LDFLAGS} -std=gnu17 -W -Wall -Werror kmsg.o kernel-cmdline.o generator.o -o generator

  install-commands:
  - |
    udevdir="$(pkg-config --var udevdir udev)"
    install -Dm644 -t "%{install-root}${udevdir}/rules.d" rules.d/90-ramfs-root.rules rules.d/90-gnomeos-iso.rules

  - |
    systemdsystemgeneratordir="$(pkg-config --var systemdsystemgeneratordir systemd)"
    install -Dm755 generator "%{install-root}${systemdsystemgeneratordir}/gnomeos-live"

  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    for disable in systemd-repart.service \
                   systemd-tpm2-setup.service \
                   systemd-tpm2-setup-early.service \
                   systemd-pcrlock-make-policy.service; do
      mkdir -p "%{install-root}${systemdsystemunitdir}/${disable}.d"
      cat <<EOF >"%{install-root}${systemdsystemunitdir}/${disable}.d/live.conf"
    [Unit]
    ConditionKernelCommandLine=!root=live:gnomeos
    EOF
    done
