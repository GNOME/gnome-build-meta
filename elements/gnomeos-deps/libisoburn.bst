kind: autotools

sources:
- kind: tar
  url: libburnia:libisoburn-1.5.6.tar.gz
  ref: 2b80a6f73dd633a5d243facbe97a15e5c9a07644a5e1a242c219b9375a45f71b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libisofs.bst
- gnomeos-deps/libburn.bst
