kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20240701.tar.xz
  ref: 1d7381a72f0c45f473befa4a92fa010a37fc4f7b2bb5d1f68e06da440ef6905d
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
