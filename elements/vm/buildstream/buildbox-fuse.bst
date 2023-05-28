kind: cmake

sources:
- kind: tar
  url: gitlab:BuildGrid/buildbox/buildbox-fuse/-/archive/1.0.0/buildbox-fuse-1.0.0.tar.gz
  ref: 89f363e8f9f2d2dedc316a0312eba795ddaf0fab835019c3bbdee19471a33faa

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/fuse3.bst
- vm/buildstream/buildbox-common.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
  (?):
  - arch == "riscv64":
      local_ldflags: >-
        -Wl,--push-state,--no-as-needed -latomic -Wl,--pop-state
