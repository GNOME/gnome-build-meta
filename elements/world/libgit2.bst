kind: cmake
sources:
- kind: tar
  url: github_com:libgit2/libgit2/archive/v0.26.0.tar.gz
depends:
- base.bst
variables:
  cmake-local: -DTHREADSAFE:BOOL=1
