kind: manual

sources:
- kind: git_tag
  url: gitlab:openconnect/vpnc-scripts.git
  track: master

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
