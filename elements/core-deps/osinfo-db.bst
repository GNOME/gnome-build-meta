kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20220214.tar.xz
  ref: 13e6c900eb8200f1660f8a1ed775ececd5a01fdb24bfb6eee1ce65dd7bcfd3a9
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
