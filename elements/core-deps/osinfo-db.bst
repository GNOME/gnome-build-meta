kind: manual
sources:
- kind: remote
  url: https://releases.pagure.org/libosinfo/osinfo-db-20220727.tar.xz
  ref: 2291e5234ed899a830c36f2b4056ff5e76235f4ba07b593421f4865290634d5e
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
