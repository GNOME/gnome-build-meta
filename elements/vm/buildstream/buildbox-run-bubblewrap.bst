kind: cmake

sources:
- kind: tar
  url: gitlab:BuildGrid/buildbox/buildbox-run-bubblewrap/-/archive/0.0.64/buildbox-run-bubblewrap-0.0.64.tar.gz
  ref: 28309cfde1f9b7b3451e6ecad86cd13ed95cf7fbcc3d9907c8e16ed1e3581d26

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- vm/buildstream/buildbox-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- freedesktop-sdk.bst:components/bubblewrap.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
  (?):
  - arch == "riscv64":
      local_ldflags: >-
        -Wl,--push-state,--no-as-needed -latomic -Wl,--pop-state

config:
  install-commands:
    (>):
    - ln -s buildbox-run-bubblewrap "%{install-root}%{bindir}/buildbox-run"
