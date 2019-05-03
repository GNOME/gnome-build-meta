kind: cmake
public:
  cpe:
    patches:
    - CVE-2018-5785
    - CVE-2018-6616
    - CVE-2018-18088
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
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
