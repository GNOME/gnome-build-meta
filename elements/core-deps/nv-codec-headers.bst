kind: make

sources:
- kind: git_repo
  url: github:FFmpeg/nv-codec-headers.git
  track: 'n*.*.*.*'
  ref: n13.0.19.0-0-ge844e5b26f46bb77479f063029595293aa8f812d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-install: make -j1 PREFIX="%{prefix}" LIBDIR="%{lib}" DESTDIR="%{install-root}" install
