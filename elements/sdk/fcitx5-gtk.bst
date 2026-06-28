kind: cmake

sources:
- kind: git_repo
  url: github:fcitx/fcitx5-gtk.git
  track: '*.*.*'
  ref: 5.1.3-0-g11e4af22f986f4bfda10a59cd5e57a6b5de45202
- kind: patch
  path: patches/fcitx5-gtk/missing-include.patch

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
