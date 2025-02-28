kind: manual

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --variable systemdsystemunitdir systemd)"

    install -d -m755 "%{install-root}${systemdsystemunitdir}/multi-user.target.upholds/"
    for service in apparmor.service snapd.service snapd.apparmor.service; do
      ln -s ../${service} "%{install-root}${systemdsystemunitdir}/multi-user.target.upholds/"
    done

    install -d -m755 "%{install-root}${systemdsystemunitdir}/sockets.target.upholds/"
    ln -s ../snapd.socket "%{install-root}${systemdsystemunitdir}/sockets.target.upholds/"
