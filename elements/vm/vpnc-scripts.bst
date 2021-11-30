kind: manual

sources:
- kind: tar
  url: tar_ftp_infradead_org:/pub/vpnc-scripts/vpnc-scripts-20210402.tar.gz

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
