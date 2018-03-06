kind: autotools
sources:
- kind: tar
  url: https://ftp.mozilla.org/pub/js/mozjs-24.2.0.tar.bz2
  ref: e62f3f331ddd90df1e238c09d61a505c516fe9fd8c5c95336611d191d18437d8
  etag: '"c3a123a64c0d226d2f0d5bb6f0536733-2"'
- kind: patch
  path: files/mozjs24/fix-FTBFS-with-GCC-7.patch
- kind: patch
  path: files/mozjs24/fix-perl-5.22.patch
depends:
- base.bst
variables:
  command-subdir: _build
  conf-local: >
    --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc
    --disable-warnings-as-errors
config:
  configure-commands:
  - '%{build-root}/js/src/configure %{conf-args}'
