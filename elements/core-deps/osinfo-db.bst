kind: manual

sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20210215.tar.xz

  ref: 1c8337b2ae3bfb49c89a26b0f828e38e0627048a2bc2603a53168d79f8d83598
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
