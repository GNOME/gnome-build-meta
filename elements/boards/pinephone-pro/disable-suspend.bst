kind: manual

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

config:
  build-commands:
  - |
    cat <<EOF >disable-suspend.conf
    # Suspend does not yet work on Pinebook Pro
    [Sleep]
    AllowSuspend=no
    EOF

  install-commands:
  - |
    systemdutildir="$(pkg-config --variable systemdutildir systemd)"
    install -Dm644 -t "%{install-root}${systemdutildir}/sleep.conf.d" disable-suspend.conf
