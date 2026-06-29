kind: cmake

sources:
- kind: git_repo
  url: github:fcitx/fcitx5-gtk.git
  track: '*.*.*'
  ref: 5.1.7-0-g3b18d2ab7401d4233daf38bbc5896f1703685a43

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst

depends:
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DENABLE_GIR=Off
    -DENABLE_GTK4_IM_MODULE=On
    -DENABLE_GTK3_IM_MODULE=On
    -DENABLE_GTK2_IM_MODULE=Off

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libFcitx5GClient.so'
