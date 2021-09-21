kind: manual
sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210903.tar.xz
  ref: 30e7d3f21bc0d3a24fd23da29f6364afe896d7c9e2dfb39f0999ffc6b7730834
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
