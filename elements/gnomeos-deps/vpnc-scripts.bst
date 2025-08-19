kind: manual

sources:
- kind: git_repo
  url: gitlab:openconnect/vpnc-scripts.git
  track: master
  ref: ce9e961bd0f6b867e1c7c35f78f6fb973f6ff101

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 -t '%{install-root}%{datadir}/vpnc-scripts' vpnc-script*
  - |
    %{install-extra}

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
