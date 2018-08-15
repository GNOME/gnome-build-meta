depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 02e0a3dd3e4799e33103f70ec7df75348c8540966ee7c948e4ed8a42bbccfb30
  url: http://samba.org/ftp/ppp/ppp-2.4.7.tar.gz
variables:
  autogen: ''
  make-install: make -j1 INSTROOT="%{install-root}" install
