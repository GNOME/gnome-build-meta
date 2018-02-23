kind: autotools
sources:
- kind: tar
  url: https://ftp.mozilla.org/pub/js/mozjs-24.2.0.tar.bz2
  ref: e62f3f331ddd90df1e238c09d61a505c516fe9fd8c5c95336611d191d18437d8
depends:
- base.bst
variables:
  command-subdir: _build
  conf-local: >
    --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc
    --disable-warnings-as-errors AUTOCONF=autoconf CXXFLAGS=-fpermissive
config:
  configure-commands:
  - '%{build-root}/js/src/configure %{conf-args}'
