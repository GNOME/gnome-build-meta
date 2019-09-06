kind: autotools
sources:
- kind: tar
  url: https://download.samba.org/pub/ppp/ppp-2.4.7.tar.gz
- kind: patch
  path: files/ppp/use-openssl.patch
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  # not a real autotools project
  autogen: ''
  make-install: make -j1 INSTROOT="%{install-root}" BINDIR="%{install-root}%{bindir}" install
