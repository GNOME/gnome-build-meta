kind: autotools
sources:
- kind: tar
  url: http://samba.org/ftp/ppp/ppp-2.4.7.tar.gz
  ref: 02e0a3dd3e4799e33103f70ec7df75348c8540966ee7c948e4ed8a42bbccfb30
- kind: patch
  path: files/ppp/use-openssl.patch
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  # not a real autotools project
  autogen: ''
  make-install: make -j1 INSTROOT="%{install-root}" install
