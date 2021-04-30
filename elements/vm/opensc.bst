kind: autotools
sources:
- kind: tar
  url: github_com:OpenSC/OpenSC/releases/download/0.21.0/opensc-0.21.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/pcsc-lite.bst
config:
  install-commands:
    (>):
    - |
      echo 'module: opensc-pkcs11.so' >opensc.module
      install -Dm644 -t '%{install-root}%{datadir}/p11-kit/modules' opensc.module
