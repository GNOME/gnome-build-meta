kind: cmake

sources:
- kind: git
  url: https://github.com/raspberrypi/userland/
  track: master
  ref: 6e6a2c859a17a195fbb6a97c9da584dd2b9b0178
depends:
- junction: freedesktop-sdk.bst
  filename: public-stacks/buildsystem-cmake.bst
  type: build

- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst


- filename: raspi/bsp/kernel-modules.bst


variables:
  cmake-local: |
    -DCMAKE_BUILD_TYPE=Release \
    -DARM64=ON \
    -DBUILD_WAYLAND=TRUE
