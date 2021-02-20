kind: manual
sources:
- kind: tar
  url: https://download.samba.org/pub/samba/stable/samba-4.13.4.tar.gz
  ref: a1b34c63f7100cc8626902d80f335c7cb0b45d4707dd3c4b010f7a28ed615c78
- kind: patch
  path: files/samba/fix-root-build.patch
build-depends:
- core-deps/perl-parse-yapp.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
depends:
- core-deps/openldap.bst
- core-deps/rpcsvc-proto.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  configure-commands:
  - ./configure --enable-fhs --prefix=%{prefix} --exec-prefix=%{exec_prefix} --bindir=%{bindir}
    --sbindir=%{sbindir} --sysconfdir=%{sysconfdir} --datadir=%{datadir} --includedir=%{includedir}
    --libdir=%{libdir} --libexecdir=%{libexecdir} --localstatedir=%{localstatedir}
    --sharedstatedir=%{sharedstatedir} --mandir=%{mandir} --infodir=%{infodir} --without-ad-dc
    --without-json
  build-commands:
  - make
  install-commands:
  - DESTDIR=%{install-root} make install
  - mv %{install-root}/var/run %{install-root}
environment:
  MAKEFLAGS: -j%{max-jobs}
  V: '1'
environment-nocache:
- MAKEFLAGS
- V
