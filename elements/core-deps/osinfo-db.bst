kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210215.tar.xz

build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
