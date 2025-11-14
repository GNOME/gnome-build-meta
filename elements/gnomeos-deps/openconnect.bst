kind: autotools

sources:
- kind: git_repo
  url: gitlab:openconnect/openconnect.git
  track: 'v*'
  ref: v9.12-0-g59f2e59eb3e436364ef82e630e5a2f88f32acd58

variables:
  conf-local: >-
    --with-vpnc-script=/usr/share/vpnc-scripts

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/gnutls.bst
- gnomeos-deps/vpnc-scripts.bst
