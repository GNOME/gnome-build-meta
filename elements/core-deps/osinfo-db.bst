kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20231215.tar.xz
  ref: dfb7c5975ce4efffd92aadd00094a0f7c593b41988fda539915f6459f7164554
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
