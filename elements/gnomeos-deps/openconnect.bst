kind: autotools

sources:
- kind: git_repo
  url: gitlab:openconnect/openconnect.git
  track: 'v*'
  ref: v9.21-0-g8b702bf2dbaf11302ed98629214b1df5d50a12aa

variables:
  conf-local: >-
    --with-vpnc-script=/usr/share/vpnc-scripts

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/gnutls.bst
- gnomeos-deps/vpnc-scripts.bst
