kind: manual

sources:
- kind: git_tag
  url: gitlab:openconnect/vpnc-scripts.git
  track: master

  ref: b5f3908c51294eed0248891229037f0dc588eefa
config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
