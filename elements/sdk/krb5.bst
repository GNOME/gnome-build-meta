kind: autotools

sources:
- kind: tar
  url: https://kerberos.org/dist/krb5/1.19/krb5-1.19.1.tar.gz
- kind: local
  path: files/krb5
  directory: krb5-config

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

config:
  install-commands:
    (>):
    - mkdir -p %{install-root}%{sysconfdir}
    - install -m 644 ../krb5-config/krb5.conf %{install-root}%{sysconfdir}/krb5.conf

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
    version: 5-1.19
