kind: autotools
sources:
- kind: tar
  url: https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tar.xz
  ref: f222ef602647eecb6853681156d32de4450a2c39f4de93bd5b20235f2e660ed7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/gdbm.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:components/xz.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: |
    --enable-shared \
    --with-ensurepip=yes \
    --with-system-expat \
    --with-system-ffi \
    --enable-loadable-sqlite-extensions \
    --with-dbmliborder=gdbm \
    --enable-unicode=ucs4
config:
  install-commands:
  - '%{make-install} DESTSHARED=/usr/lib/python2.7/lib-dynload'
  - rm %{install-root}%{bindir}/2to3
