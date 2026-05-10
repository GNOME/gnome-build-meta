kind: autotools

sources:
- kind: git_repo
  url: github:OpenSC/pkcs11-helper.git
  track: 'pkcs11-helper-*.*.*'
  ref: pkcs11-helper-1.31.0-0-g286b4415b95f298ab35d62508a37c2aefc055037

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
