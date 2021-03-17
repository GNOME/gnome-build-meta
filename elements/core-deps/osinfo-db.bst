kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210312.tar.xz

  ref: 7548ec09e445ca7378c5ceb99e39edca8857f8293831e0b3cb558f4230870e10
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
