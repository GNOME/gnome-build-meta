kind: manual
sources:
- kind: tar
  url: https://download.samba.org/pub/samba/stable/samba-4.9.4.tar.gz
- kind: patch
  path: files/samba/fix-root-build.patch
depends:
- core-deps/libtirpc.bst
- core-deps/lmdb.bst
- core-deps/openldap.bst
- core-deps/rpcsvc-proto.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/python2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
config:
  configure-commands:
  - ./configure --enable-fhs --without-ad-dc --without-json-audit --prefix=%{prefix}
      --exec-prefix=%{exec_prefix} --bindir=%{bindir}
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
