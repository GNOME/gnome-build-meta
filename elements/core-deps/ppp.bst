kind: autotools
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/ppp/ppp-2.4.7.tar.gz
- kind: patch
  path: files/ppp/use-openssl.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  # not a real autotools project
  autogen: ''
  make-install: make -j1 INSTROOT="%{install-root}" BINDIR="%{install-root}%{bindir}" install
