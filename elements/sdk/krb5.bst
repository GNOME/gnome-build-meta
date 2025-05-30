kind: autotools

sources:
- kind: tar
  url: kerberos:dist/krb5/1.21/krb5-1.21.3.tar.gz
  ref: b7a4cd5ead67fb08b980b21abd150ff7217e85ea320c9ed0c6dadd304840ad35
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

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
