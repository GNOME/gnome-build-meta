kind: cmake

sources:
- kind: tar
  url: gitlab:BuildGrid/buildbox/buildbox-common/-/archive/1.0.0/buildbox-common-1.0.0.tar.gz
  ref: 7c11d66a52f804c3ffaa15a828a772cd2beba199f99cc2044d5591ef0c095009

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- vm/buildstream/glog.bst
- vm/buildstream/grpc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/protobuf.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
  (?):
  - arch == "riscv64":
      local_ldflags: >-
        -Wl,--push-state,--no-as-needed -latomic -Wl,--pop-state
