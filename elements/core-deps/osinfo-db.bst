kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210426.tar.xz
  ref: 66c93b4a5b319b2ff7d40360d9e94486a9a45f2c0dd1c30d4b31de4f223070d0

build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
