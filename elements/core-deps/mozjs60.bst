config:
  build-commands:
  - make
  configure-commands:
  - ../js/src/configure --prefix=%{prefix} --libdir=%{libdir} --disable-jemalloc AUTOCONF=autoconf
  install-commands:
  - make -j1 DESTDIR="%{install-root}" install
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: manual
sources:
- kind: tar
  ref: 834ffe877fdbbd81315ae3c101221fa404096c354483a86c1a02ece19fca68fd
  url: gnome_download:teams/releng/tarballs-needing-help/mozjs/mozjs-60.1.0.tar.bz2
variables:
  command-subdir: _build
