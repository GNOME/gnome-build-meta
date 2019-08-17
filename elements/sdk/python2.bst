kind: autotools
sources:
- kind: tar
  url: https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tar.xz
depends:
- filename: components/expat.bst
  junction: freedesktop-sdk.bst
- filename: components/libffi.bst
  junction: freedesktop-sdk.bst
- filename: components/gdbm.bst
  junction: freedesktop-sdk.bst
- filename: components/sqlite.bst
  junction: freedesktop-sdk.bst
- filename: components/xz.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  type: build
  junction: freedesktop-sdk.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
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
