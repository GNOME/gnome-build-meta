kind: manual
sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20240523.tar.xz
  ref: 9deff2dfd294b24cec9f0d62042f0443ad8fdc6606f8bea951e3e53170a906c5
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
