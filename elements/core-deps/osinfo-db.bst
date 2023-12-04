kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20231027.tar.xz
  ref: 84a3dd050786ad52215fa3ec6531573ee6b3c3a56ca20b1ba75b2d85e0f0ba1a
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
