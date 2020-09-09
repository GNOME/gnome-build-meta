kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20200813.tar.xz
  ref: 31bfa60114f05ca26b5d16766832b86a23c7fa5a0fc44323154bf8b627c9f488

build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
