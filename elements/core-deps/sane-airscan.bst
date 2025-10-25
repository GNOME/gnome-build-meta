kind: make

sources:
- kind: git_repo
  url: github:alexpevzner/sane-airscan.git
  track: '*.*'
  ref: 0.99.36-0-g48cfe8d3ae4ad22006fa002852c9363627d0f78d

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
