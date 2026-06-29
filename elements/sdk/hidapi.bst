kind: cmake

sources:
- kind: git_repo
  url: github:libusb/hidapi.git
  track: "hidapi-*.*.*"
  exclude:
  - "hidapi-*.*.*-rc*"
  ref: hidapi-0.15.0-0-gd6b2a974608dec3b76fb1e36c189f22b9cf3650c

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst

variables:
  cmake-local: >-
    -DHIDAPI_WITH_LIBUSB=OFF
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
