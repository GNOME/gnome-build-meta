kind: manual

sources:
- kind: git_repo
  url: gitlab:openconnect/vpnc-scripts.git
  track: master
  ref: 4ed41c21e3857f96ab935b45092bbb07c3ccd5be

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
