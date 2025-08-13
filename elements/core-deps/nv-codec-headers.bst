kind: make

sources:
- kind: tar
  url: 
    github_files:FFmpeg/nv-codec-headers/releases/download/n13.0.19.0/nv-codec-headers-13.0.19.0.tar.gz
  ref: 13da39edb3a40ed9713ae390ca89faa2f1202c9dda869ef306a8d4383e242bee

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-install: make -j1 PREFIX="%{prefix}" LIBDIR="%{lib}" DESTDIR="%{install-root}" install
