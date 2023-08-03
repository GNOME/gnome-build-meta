kind: autotools

sources:
- kind: tar
  url: kerberos:dist/krb5/1.21/krb5-1.21.1.tar.gz
  ref: 7881c3aaaa1b329bd27dbc6bf2bf1c85c5d0b6c7358aff2b35d513ec2d50fa1f
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  command-subdir: src

  # krb5 configure script doesnt like --disable-Werror
  conf-global: >-
    --disable-static
    --host=%{triplet}
    --build=%{triplet}
  conf-local: >-
    --runstatedir=%{runstatedir}
    --disable-rpath
    --with-system-et
    --with-system-ss

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgssapi_krb5.so'
        - '%{libdir}/libgssrpc.so'
        - '%{libdir}/libk5crypto.so'
        - '%{libdir}/libkadm5clnt_mit.so'
        - '%{libdir}/libkadm5clnt.so'
        - '%{libdir}/libkadm5srv_mit.so'
        - '%{libdir}/libkadm5srv.so'
        - '%{libdir}/libkdb5.so'
        - '%{libdir}/libkrad.so'
        - '%{libdir}/libkrb5.so'
        - '%{libdir}/libkrb5support.so'
        - '%{libdir}/libverto.so'
  cpe:
    product: kerberos_5
