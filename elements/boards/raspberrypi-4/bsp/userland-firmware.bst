kind: cmake

sources:
- kind: git_tag
  url: https://github.com/raspberrypi/userland/
  track: a246147c21ae5be92ad1b85199b5b0bb447e0544

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- boards/raspberrypi-4/bsp/kernel-modules.bst


variables:
  cmake-local: |
    -DCMAKE_BUILD_TYPE=Release \
    -DARM64=ON \
    -DBUILD_WAYLAND=TRUE
