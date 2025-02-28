kind: manual

sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20250124.tar.xz
  ref: 7ca717f0975a798135a2b39eefdd1436a0b0682e29685c7fd01ef7f83a257250

build-depends:
- core-deps/osinfo-db-tools.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
