kind: cmake
sources:
- kind: tar
  url: github_com:libgit2/libgit2/archive/v0.26.3.tar.gz
depends:
- world/libssh2.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DLIB_INSTALL_DIR:PATH=%{libdir} -DTHREADSAFE:BOOL=1
