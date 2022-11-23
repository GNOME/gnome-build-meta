kind: manual

sources:
- kind: git_tag
  url: gitlab:openconnect/vpnc-scripts.git
  track: master
  ref: ee45e3cdbbb7ca2f63f27c05775cb49c2711be26

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
