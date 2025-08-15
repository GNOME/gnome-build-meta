kind: autotools

sources:
- kind: tar
  url: github_files:stefanberger/libtpms/archive/refs/tags/v0.10.1.tar.gz
  ref: ebc24f3191d90f6cf0b4d4200cd876db4bd224b3c565708bbea0a82ee275e0fb

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
