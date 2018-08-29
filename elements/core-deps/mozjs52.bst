kind: autotools
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-52.2.1gnome1.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  mozjs_target: ''
  (?):
    - arch == "i386":
        mozjs_target: "--host=i586-unknown-linux-gnu"
    - arch == "arm":
        mozjs_target: "--host=arm-unknown-linux-gnu"
  command-subdir: _build
  conf-local: --enable-posix-nspr-emulation --with-system-zlib --with-intl-api --disable-jemalloc %{mozjs_target}
    AUTOCONF=autoconf
  conf-cmd: '%{build-root}/js/src/configure'
  # not a real autotools project
  autogen: ''
