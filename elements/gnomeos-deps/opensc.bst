kind: autotools

sources:
- kind: tar
  url: github_files:OpenSC/OpenSC/releases/download/0.26.1/opensc-0.26.1.tar.gz
  ref: f16291a031d86e570394762e9f35eaf2fcbc2337a49910f3feae42d54e1688cb

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
      echo 'module: opensc-pkcs11.so' >opensc.module
      install -Dm644 -t '%{install-root}%{datadir}/p11-kit/modules' opensc.module
