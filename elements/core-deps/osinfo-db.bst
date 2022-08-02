kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20220727.tar.xz
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
