depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 31697943b1dbbb51ba9aee35b8269a353c487d7af4d336010b90054dc4f9b0af
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-52.2.1gnome1.tar.gz
variables:
  autogen: ''
  command-subdir: _build
  conf-cmd: '%{build-root}/js/src/configure'
  conf-local: --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc
    AUTOCONF=autoconf
