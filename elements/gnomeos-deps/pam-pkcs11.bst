kind: autotools

sources:
- kind: git_repo
  url: github:OpenSC/pam_pkcs11.git
  track: 'pam_pkcs11-*'
  ref: pam_pkcs11-0.6.13-0-gb8dbe6370d36a6a11a466d5f0ee285804103e030

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
