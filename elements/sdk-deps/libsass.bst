kind: autotools

sources:
- kind: tar
  url: github_files:sass/libsass/archive/3.6.6.tar.gz
  ref: 11f0bb3709a4f20285507419d7618f3877a425c0131ea8df40fe6196129df15d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
