kind: autotools
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-52.2.1gnome1.tar.gz
depends:
- base.bst
variables:
  command-subdir: _build
  conf-local: --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc
    AUTOCONF=autoconf
config:
  configure-commands:
  - '%{build-root}/js/src/configure %{conf-args}'
