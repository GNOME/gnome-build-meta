kind: autotools

sources:
- kind: tar
  url: samba:samba/stable/samba-4.22.8.tar.gz
  ref: 4704dafb1d6d32e920fdc97d76a5db70b10397e166f743fa81b9326efebcec36
- kind: patch
  path: patches/samba/fix-root-build.patch

build-depends:
- core-deps/perl-parse-yapp.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- core-deps/openldap.bst
- core-deps/rpcsvc-proto.bst
- sdk/krb5.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:bootstrap-import.bst

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
