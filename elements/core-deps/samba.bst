kind: manual
sources:
- kind: tar
  url: https://download.samba.org/pub/samba/stable/samba-4.8.0.tar.gz
  ref: 87d9b585dbd8628e79aabb6e621a94bd20a072a00762e78e0899fad22fc18fb7
- kind: patch
  path: files/samba/fix-root-build.patch
depends:
- core-deps/libtirpc.bst
- core-deps/openldap.bst
- core-deps/rpcsvc-proto.bst
- filename: base.bst
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
