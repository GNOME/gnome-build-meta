kind: cmake

sources:
- kind: git_tag
  url: https://github.com/raspberrypi/userland/
  track: 6e6a2c859a17a195fbb6a97c9da584dd2b9b0178

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- boards/raspberrypi-4/bsp/kernel-modules.bst


variables:
  cmake-local: |
    -DCMAKE_BUILD_TYPE=Release \
    -DARM64=ON \
    -DBUILD_WAYLAND=TRUE
