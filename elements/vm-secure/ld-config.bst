kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    unit="ldconfig.service"
    mkdir -p "%{install-root}${systemdsystemunitdir}/${unit}.d/"
    cat <<EOF >"%{install-root}${systemdsystemunitdir}/${unit}.d/after-tmpfiles.conf"
    [Unit]
    After=systemd-tmpfiles-setup.service
    EOF
