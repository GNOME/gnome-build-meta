kind: autotools

sources:
- kind: tar
  url: github_files:stefanberger/libtpms/archive/refs/tags/v0.9.6.tar.gz
  ref: 2807466f1563ebe45fdd12dd26e501e8a0c4fbb99c7c428fbb508789efd221c0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
