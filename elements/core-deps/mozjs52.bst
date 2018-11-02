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
  (?):
    - arch == "i686":
        mozjs_target: "--host=i686-unknown-linux-gnu"
    - arch == "arm":
        mozjs_target: "--host=arm-unknown-linux-gnueabi"
  command-subdir: _build
  conf-local: --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc %{mozjs_target}
    AUTOCONF=autoconf
  conf-cmd: '%{build-root}/js/src/configure'
  # not a real autotools project
  autogen: ''
