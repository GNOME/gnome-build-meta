kind: autotools

sources:
- kind: tar
  url: samba_pub:samba/stable/samba-4.23.12.tar.gz
  ref: c124d3baf8ef68693be5681c3afd6d031e383b012be3078b4ac7ed52fb1d1394
- kind: patch
  path: patches/samba/fix-root-build.patch

build-depends:
- core-deps/perl-parse-yapp.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- core-deps/openldap.bst
- core-deps/rpcsvc-proto.bst
- sdk/krb5.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # not a real autotools project
  conf-global: --host=%{triplet} --build=%{triplet}
  conf-local: >-
    --enable-fhs
    --without-ad-dc
    --without-json
    --without-ldb-lmdb
    --with-system-mitkrb5

config:
  install-commands:
    (>):
    - mv %{install-root}/var/run %{install-root}
