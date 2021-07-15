kind: autotools
sources:
- kind: tar
  url: github_com:OpenSC/OpenSC/releases/download/0.21.0/opensc-0.21.0.tar.gz
  ref: 2bfbbb1dcb4b8d8d75685a3e95c30798fb6411d4efab3690fd89d2cb25f3325e
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
