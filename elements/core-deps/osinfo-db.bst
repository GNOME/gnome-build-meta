kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20211216.tar.xz
  ref: 09ece7b0e521330e31d12a59171e34f097181a7cbbcd6f8cd49f928923bb1082
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
