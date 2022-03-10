kind: manual

sources:
- kind: git_tag
  url: gitlab:openconnect/vpnc-scripts.git
  track: master

  ref: 40a8c62c635231b65d10ebb5d420596985af6836
config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
