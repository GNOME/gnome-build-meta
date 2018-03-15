kind: autotools
sources:
- kind: tar
  url: http://samba.org/ftp/ppp/ppp-2.4.7.tar.gz
depends:
- base.bst
variables:
  make-install: make -j1 INSTROOT="%{install-root}" install
