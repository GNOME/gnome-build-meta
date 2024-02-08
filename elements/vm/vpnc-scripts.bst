kind: manual

sources:
- kind: git_repo
  url: gitlab:openconnect/vpnc-scripts.git
  track: master
  ref: b01ac4d5d9fe0647716f3d287e557a1b0dc45701

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
