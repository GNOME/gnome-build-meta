kind: cmake

sources:
- kind: git_repo
  url: github:raspberrypi/userland.git
  track: f97b1af1b3e653f9da2c1a3643479bfd469e3b74
  ref: f97b1af1b3e653f9da2c1a3643479bfd469e3b74
- kind: patch_queue
  path: patches/boards/raspberrypi-4/

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- boards/raspberrypi-4/bsp/linux.bst


variables:
  cmake-local: |
    -DCMAKE_BUILD_TYPE=Release \
    -DARM64=ON
