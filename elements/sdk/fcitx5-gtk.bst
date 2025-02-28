kind: cmake

sources:
- kind: tar
  url: github_files:fcitx/fcitx5-gtk/archive/5.1.3.tar.gz
  ref: 1892fcaeed0e710cb992a87982a8af78f9a9922805a84da13f7e3d416e2a28d1
- kind: patch
  path: patches/fcitx5-gtk/missing-include.patch

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

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
