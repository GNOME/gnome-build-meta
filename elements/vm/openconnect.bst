kind: autotools

sources:
- kind: tar
  url: ftp://ftp.infradead.org/pub/openconnect/openconnect-8.10.tar.gz

variables:
  conf-local: >-
      --with-vpnc-script=/usr/share/vpnc-scripts

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/gnutls.bst
- vm/vpnc-scripts.bst
