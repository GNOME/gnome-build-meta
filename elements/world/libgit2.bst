kind: cmake
sources:
- kind: tar
  url: tarball_github_com:libgit2/libgit2/archive/v0.26.0.tar.gz
  ref: 6a62393e0ceb37d02fe0d5707713f504e7acac9006ef33da1e88960bd78b6eac
depends:
- base.bst
variables:
  cmake-local: -DTHREADSAFE:BOOL=1
