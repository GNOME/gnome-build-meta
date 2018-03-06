kind: autotools
sources:
- kind: tar
  url: https://ftp.mozilla.org/pub/js/mozjs-24.2.0.tar.bz2
- kind: patch
  path: files/mozjs24/fix-FTBFS-with-GCC-7.patch
- kind: patch
  path: files/mozjs24/fix-perl-5.22.patch
depends:
- base.bst
variables:
  command-subdir: _build
  configure: %{build-root}/js/src/configure
  conf-local: >
    --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc
    --disable-warnings-as-errors
