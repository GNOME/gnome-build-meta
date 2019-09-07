kind: autotools
sources:
- kind: tar
  url: gnome_download:teams/releng/tarballs-needing-help/ppp/ppp-2.4.7.tar.gz
- kind: patch
  path: files/ppp/use-openssl.patch
depends:
- filename: base/openssl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  # not a real autotools project
  autogen: ''
  make-install: make -j1 INSTROOT="%{install-root}" BINDIR="%{install-root}%{bindir}" install
