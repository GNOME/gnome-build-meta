kind: autotools
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-52.2.1gnome1.tar.gz
depends:
- filename: base/python2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  mozjs_target: ''
  command-subdir: _build
  conf-local: --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc AUTOCONF=autoconf
  conf-cmd: '%{build-root}/js/src/configure'
  # not a real autotools project
  autogen: ''
