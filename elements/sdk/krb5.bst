kind: autotools

sources:
- kind: tar
  url: kerberos:dist/krb5/1.22/krb5-1.22-beta1.tar.gz
  ref: 6a516fd180bdfe11c0c0ad774999e1a66295253390475cbfa88835983cf39559
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
