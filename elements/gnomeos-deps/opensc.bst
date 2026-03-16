kind: autotools

sources:
- kind: git_repo
  url: github:OpenSC/OpenSC.git
  track: '*.*'
  ref: 0.27.0-rc2-0-g1df21be0fb8f3e23bee113f913046f9384ac5a7f
- kind: local
  path: files/opensc/opensc.module

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bash-completion.bst

depends:
- freedesktop-sdk.bst:components/pcsc-lite.bst

variables:
  conf-local: >-
    --disable-strict

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t '%{install-root}%{datadir}/p11-kit/modules' opensc.module
