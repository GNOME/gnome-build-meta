kind: cmake

sources:
- kind: git_tag
  url: https://github.com/raspberrypi/userland/
  track: f97b1af1b3e653f9da2c1a3643479bfd469e3b74
- kind: patch
  path: files/boards/raspberrypi-4/0021-cmake-Disable-format-overflow-warning-as-error.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- boards/raspberrypi-4/bsp/linux.bst


variables:
  cmake-local: |
    -DCMAKE_BUILD_TYPE=Release \
    -DARM64=ON
