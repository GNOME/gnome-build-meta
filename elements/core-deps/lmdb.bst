kind: manual
sources:
- kind: tar
  url: https://github.com/LMDB/lmdb/archive/LMDB_0.9.23.tar.gz
depends:
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
config:
  build-commands:
  - cd libraries/liblmdb && make
  install-commands:
  - cd libraries/liblmdb && DESTDIR=%{install-root} make install
