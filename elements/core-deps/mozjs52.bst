kind: autotools
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-52.6.0gnome1.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  command-subdir: _build
  conf-local: --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc
    AUTOCONF=autoconf
  conf-cmd: '%{build-root}/js/src/configure'
  # not a real autotools project
  autogen: ''
