kind: manual
sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210621.tar.xz
  ref: 2b94b0d92dc7aa43a20dc4ebf2460c7b303ee5fbaffbab9d9ed296ce99774219
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
