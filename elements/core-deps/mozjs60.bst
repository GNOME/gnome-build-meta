kind: manual
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-60.8.0.tar.bz2
  ref: 697331336c3d65b80ded9ca87b4a8ceb804e5342b476eaa133ac638102a9dc5d
build-depends:
- sdk/python2.bst
- freedesktop-sdk.bst:components/autoconf.bst
- freedesktop-sdk.bst:components/perl.bst
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
  - ../js/src/configure --prefix=%{prefix} --libdir=%{libdir} --disable-jemalloc AUTOCONF=autoconf
    %{mozjs_target}
  build-commands:
  - make
  install-commands:
  - make -j1 DESTDIR="%{install-root}" install
  - rm %{install-root}%{libdir}/libjs_static.ajs
