kind: manual

sources:
- kind: local
  path: files/lock-pcr4/lock-pcr4@.service
- kind: local
  path: files/lock-pcr4/lock-pcr4.service
- kind: local
  path: files/lock-pcr4/lock-pcr4.socket
- kind: local
  path: files/lock-pcr4/lock-pcr4.sh
- kind: local
  path: files/lock-pcr4/unlock-pcr4.sh

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' lock-pcr4.socket lock-pcr4@.service lock-pcr4.service
    install -Dm755 -t '%{install-root}%{indep-libdir}/gnomeos' lock-pcr4.sh unlock-pcr4.sh
