kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20220830.tar.xz
  ref: 8111643d90deab838db7f213f154bef2e057350a9c834245ee01dd64433baafb
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
