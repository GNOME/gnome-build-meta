kind: manual
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/samba/samba-4.8.0.tar.gz
- kind: patch
  path: files/samba/fix-root-build.patch
depends:
- core-deps/libtirpc.bst
- core-deps/openldap.bst
- core-deps/rpcsvc-proto.bst
- filename: base/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/pkg-config.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/python2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
config:
  configure-commands:
  - ./configure --enable-fhs --prefix=%{prefix} --exec-prefix=%{exec_prefix} --bindir=%{bindir}
      --sbindir=%{sbindir} --sysconfdir=%{sysconfdir} --datadir=%{datadir}
      --includedir=%{includedir} --libdir=%{libdir} --libexecdir=%{libexecdir}
      --localstatedir=%{localstatedir} --sharedstatedir=%{sharedstatedir}
      --mandir=%{mandir} --infodir=%{infodir}
  build-commands:
  - make
  install-commands:
  - DESTDIR=%{install-root} make install
environment:
  MAKEFLAGS: -j%{max-jobs}
  V: 1
environment-nocache:
- MAKEFLAGS
- V
