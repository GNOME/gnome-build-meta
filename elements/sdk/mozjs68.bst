kind: manual
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-68.4.2.tar.bz2
build-depends:
- freedesktop-sdk.bst:components/autoconf.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/python3.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  mozjs_target: ''
  (?):
  - arch == "i686":
      mozjs_target: --host=i686-unknown-linux-gnu
  - arch == "arm":
      mozjs_target: --host=arm-unknown-linux-gnueabi
  command-subdir: _build
config:
  configure-commands:
  -  ../js/src/configure --prefix=%{prefix} --libdir=%{libdir} --disable-jemalloc --enable-unaligned-private-values AUTOCONF=autoconf %{mozjs_target}
  build-commands:
  - make
  install-commands:
  - make -j1 DESTDIR="%{install-root}" install
  - rm %{install-root}%{libdir}/libjs_static.ajs
