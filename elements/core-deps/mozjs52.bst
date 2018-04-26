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
  conf-cmd: %{buildroot}/js/src/configure
  # not a real autotools project
  autogen: ''
