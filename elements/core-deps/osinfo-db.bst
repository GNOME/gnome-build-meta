kind: manual

sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20251212.tar.xz
  ref: 06379250c91306c98cb9726af44eae5909dfdd5449f90331e904ae1221d8d5e7
build-depends:
- core-deps/osinfo-db-tools.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
  - "%{install-extra}"
