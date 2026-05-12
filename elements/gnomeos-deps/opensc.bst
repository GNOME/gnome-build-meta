kind: autotools

sources:
- kind: git_repo
  url: github:OpenSC/OpenSC.git
  track: '*.*'
  ref: 0.27.1-0-g19868984dc4dc697af6a86d65ab32a1f19a43ea4
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
