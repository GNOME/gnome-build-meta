kind: autotools

sources:
- kind: tar
  url: bindfs:bindfs-1.18.1.tar.gz
  ref: 2a7064d993a5f255c52d72385ef14e349c131bc44195766e2173428e06d279fd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
