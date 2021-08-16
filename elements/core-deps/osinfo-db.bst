kind: manual
sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210809.tar.xz
  ref: 56696ca84ea69354d9f4cf0a048bf0ee156cea0b97302adb0e35f20e95d1ea99
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
