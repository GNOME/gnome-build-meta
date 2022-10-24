kind: autotools

sources:
- kind: tar
  url: samba:samba/stable/samba-4.17.1.tar.gz
  ref: 1b939d03f8ca57194c413ed863014a3850c9ce9f9e31c2a7df706806fba77c01
- kind: patch
  path: files/samba/fix-root-build.patch

build-depends:
- core-deps/perl-parse-yapp.bst
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
    --with-system-mitkrb5

config:
  install-commands:
    (>):
    - mv %{install-root}/var/run %{install-root}
