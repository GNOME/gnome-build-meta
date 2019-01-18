kind: cmake
sources:
- kind: tar
  url: github_com:uclouvain/openjpeg/archive/v2.3.0.tar.gz
- kind: patch
  path: files/openjpeg/CVE-2018-5785.patch
- kind: patch
  path: files/openjpeg/CVE-2018-6616.patch
- kind: patch
  path: files/openjpeg/CVE-2018-18088.patch
- kind: patch
  path: files/openjpeg/fix-cmake-config.patch
depends:
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
