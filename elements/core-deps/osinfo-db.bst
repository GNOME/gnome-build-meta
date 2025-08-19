kind: manual

sources:
- kind: remote
  url: pagure_releases:libosinfo/osinfo-db-20250606.tar.xz
  ref: 9940aa47df298073c51dcf8a4dcc855f494ab864c24cdbda46bd897957357fe1
build-depends:
- core-deps/osinfo-db-tools.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' 
    osinfo-db-*.tar.xz
  - "%{install-extra}"
