kind: autotools

sources:
- kind: git_repo
  url: github:OpenSC/pkcs11-helper.git
  track: 'pkcs11-helper-*.*.*'
  ref: pkcs11-helper-1.30.0-0-g8bed16034f629a0361fa8ff89deed2b43dc45d8b

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
