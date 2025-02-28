kind: cmake

sources:
- kind: tar
  url: github_files:libusb/hidapi/archive/refs/tags/hidapi-0.14.0.tar.gz
  ref: a5714234abe6e1f53647dd8cba7d69f65f71c558b7896ed218864ffcf405bcbd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst

variables:
  cmake-local: >-
    -DHIDAPI_WITH_LIBUSB=OFF
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
