kind: autotools

sources:
- kind: tar
  url: 
    github_files:OpenSC/pkcs11-helper/releases/download/pkcs11-helper-1.30.0/pkcs11-helper-1.30.0.tar.bz2
  ref: 4c5815ba910cabf26df08d449ca2909daf4538c9899aa7f7fadc61229d3488a9

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
