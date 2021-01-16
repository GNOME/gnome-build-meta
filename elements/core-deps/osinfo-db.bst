kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20201119.tar.xz

  ref: 74f01379359248cb253f86d1126fffc89f319136e35d483c1fd4aa01b3200ca8
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
