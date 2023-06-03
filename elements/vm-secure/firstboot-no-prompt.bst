kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    unit="systemd-firstboot.service"
    mkdir -p "%{install-root}${systemdsystemunitdir}/${unit}.d/"
    cat <<EOF >"%{install-root}${systemdsystemunitdir}/${unit}.d/no-prompt.conf"
    [Service]
    ExecStart=
    ExecStart=/usr/bin/systemd-firstboot --root-password=root
    StandardOutput=journal
    StandardInput=null
    StandardError=journal
    EOF
