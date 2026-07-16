kind: make

sources:
- kind: git_repo
  url: github:FFmpeg/nv-codec-headers.git
  track: 'n*.*.*.*'
  ref: n13.1.15.0-0-g0a6fba9a2820628b8103464f4c8753ee05838baa

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-install: make -j1 PREFIX="%{prefix}" LIBDIR="%{lib}" DESTDIR="%{install-root}" install
