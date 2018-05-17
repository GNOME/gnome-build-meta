kind: autotools
sources:
- kind: tar
  url: http://samba.org/ftp/ppp/ppp-2.4.7.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  # not a real autotools project
  autogen: ''
  make-install: make -j1 INSTROOT="%{install-root}" install
