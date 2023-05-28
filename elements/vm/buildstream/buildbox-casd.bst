kind: cmake

sources:
# Version gets "unknown" if built from tarball
- kind: git_tag
  url: gitlab:BuildGrid/buildbox/buildbox-casd.git
  track: 1.0.0
  ref: 1.0.0-0-g824ee5f12417427543478ea77f9e8f9759c94b32

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- vm/buildstream/buildbox-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_BENCHMARK=OFF
  (?):
  - arch == "riscv64":
      local_ldflags: >-
        -Wl,--push-state,--no-as-needed -latomic -Wl,--pop-state
