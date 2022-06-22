kind: autotools

sources:
- kind: tar
  url: github_files:OpenSC/OpenSC/releases/download/0.22.0/opensc-0.22.0.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

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
