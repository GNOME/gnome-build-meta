kind: manual
sources:
- kind: remote
  url: tar_releases_pagure_org:/libosinfo/osinfo-db-20211013.tar.xz
build-depends:
- core-deps/osinfo-db-tools.bst

config:
  install-commands:
  - osinfo-db-import --root '%{install-root}' --dir '%{datadir}/osinfo' osinfo-db-*.tar.xz
