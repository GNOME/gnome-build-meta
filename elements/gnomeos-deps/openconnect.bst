kind: autotools

sources:
- kind: tar
  url: infradead:openconnect/download/openconnect-9.12.tar.gz
  ref: a2bedce3aa4dfe75e36e407e48e8e8bc91d46def5335ac9564fbf91bd4b2413e

variables:
  conf-local: >-
    --with-vpnc-script=/usr/share/vpnc-scripts

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/gnutls.bst
- gnomeos-deps/vpnc-scripts.bst
