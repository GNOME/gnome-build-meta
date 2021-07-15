kind: manual
sources:
- kind: tar
  url: ftp://ftp.infradead.org/pub/vpnc-scripts/vpnc-scripts-20210402.tar.gz
  ref: cd00e831904554c7acbc9cd20e6457c6e787fe52dc2f75d39263a65faccc19f0
config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
