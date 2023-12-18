kind: manual

sources:
- kind: git_repo
  url: gitlab:openconnect/vpnc-scripts.git
  track: master
  ref: 50220438a87c217f42f212549211fb7051bd25e2

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
