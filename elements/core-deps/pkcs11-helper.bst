kind: autotools

sources:
- kind: tar
  url: github_files:OpenSC/pkcs11-helper/releases/download/pkcs11-helper-1.29.0/pkcs11-helper-1.29.0.tar.bz2
  ref: 996846a3c8395e03d8c0515111dc84d82e6e3648d44ba28cb2dbbbca2d4db7d6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/graphviz.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  autogen: >-
    autoreconf -fvi
  conf-local: >-
    --enable-doc
  local_flags: >-
    -Wno-error=incompatible-pointer-types
