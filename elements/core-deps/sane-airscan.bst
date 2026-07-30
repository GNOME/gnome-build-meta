kind: make

sources:
- kind: git_repo
  url: github:alexpevzner/sane-airscan.git
  track: '*.*'
  ref: 0.99.38-0-g9da18d88c88f542671b24fc0433dd7d69dcb0132

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libxml2.bst
- core-deps/sane-backends.bst

variables:
  # No compression of man pages, we have a compressed erofs
  make-args: >-
    COMPRESS=''
