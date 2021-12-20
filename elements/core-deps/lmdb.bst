kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  build-commands:
  - |
    cd libraries/liblmdb
    make prefix="%{prefix}" libdir="%{libdir}" bindir="%{bindir}" XCFLAGS="${CFLAGS}"
  install-commands:
  - |
    cd libraries/liblmdb
    make install prefix="%{prefix}" libdir="%{libdir}" bindir="%{bindir}" DESTDIR='%{install-root}'

sources:
- kind: tar
  url: github_com:LMDB/lmdb/archive/LMDB_0.9.28.tar.gz
