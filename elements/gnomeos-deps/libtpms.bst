kind: autotools

sources:
- kind: git_repo
  url: github:stefanberger/libtpms.git
  track: 'v*'
  ref: v0.10.1-0-g56c9f8b0b816391135f5a3112cb2feac4298caac

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
