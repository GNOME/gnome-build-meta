kind: cmake

sources:
- kind: git_repo
  url: github:libusb/hidapi.git
  track: "hidapi-*.*.*"
  exclude:
  - "hidapi-*.*.*-rc*"
  ref: hidapi-0.14.0-0-gd3013f0af3f4029d82872c1a9487ea461a56dee4
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
