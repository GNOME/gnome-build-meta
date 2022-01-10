kind: manual

sources:
- kind: git_tag
  url: gitlab:openconnect/vpnc-scripts.git
  track: master

  ref: 42c0e9122940f1a024a2c52b672bff23d606c405
config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
