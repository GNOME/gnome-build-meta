kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210531.tar.xz
  ref: e46d769692e5bd985abe2e376209adafec33db77f10b35999c71b7a140963ec0

build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
