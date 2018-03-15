kind: autotools
sources:
- kind: tar
  url: http://samba.org/ftp/ppp/ppp-2.4.7.tar.gz
  ref: 02e0a3dd3e4799e33103f70ec7df75348c8540966ee7c948e4ed8a42bbccfb30
  etag: '"5a0688-a7ff5-50031876cb840"'
depends:
- base.bst
variables:
  make-install: make -j1 INSTROOT="%{install-root}" install
