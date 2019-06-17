kind: autotools

depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/e2fsprogs.bst
  junction: freedesktop-sdk.bst

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
    product: kerberos
    version: '5-1.16.1'

config:
  configure-commands:
  - |
    mkdir bst_build_dir
    cd bst_build_dir
    ../src/%{configure} --with-system-et --with-system-ss

variables:
  conf-local: |
    --disable-rpath

sources:
- kind: tar
  url: https://kerberos.org/dist/krb5/1.16/krb5-1.16.2.tar.gz
