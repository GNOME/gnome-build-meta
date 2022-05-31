kind: manual
sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20220516.tar.xz
  ref: d60f69d8afc9dcc53d76a2fb68d54c26d1fdc3a822b95c1801de58c3c66cda6d
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
