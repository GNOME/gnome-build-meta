kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20221018.tar.xz
  ref: 96736156d40fc8bcaadd4e843fe4ac8189818c06794f3171e9ce2ec21abab886
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
