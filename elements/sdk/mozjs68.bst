kind: manual
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-68.4.2.tar.bz2
- kind: patch
  path: files/mozjs68/armv7_disable_WASM_EMULATE_ARM_UNALIGNED_FP_ACCESS.patch
build-depends:
- sdk/python2.bst
- freedesktop-sdk.bst:components/autoconf.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:components/which.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  command-subdir: _build
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
config:
  configure-commands:
  -  ../js/src/configure --prefix=%{prefix} --libdir=%{libdir} --disable-jemalloc --enable-unaligned-private-values AUTOCONF=autoconf
  build-commands:
  - make
  install-commands:
  - make -j1 DESTDIR="%{install-root}" install
  - rm %{install-root}%{libdir}/libjs_static.ajs
