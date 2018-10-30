kind: manual
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-60.1.0.tar.bz2
depends:
- filename: base/python2.bst
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
config:
  configure-commands:
  -  ../js/src/configure --prefix=%{prefix} --libdir=%{libdir} --disable-jemalloc AUTOCONF=autoconf %{mozjs_target}
  build-commands:
  - make
  install-commands:
  - make -j1 DESTDIR="%{install-root}" install
  - rm %{install-root}%{libdir}/libjs_static.ajs
