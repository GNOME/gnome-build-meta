kind: cmake

sources:
- kind: tar
  url: github_files:fcitx/fcitx5-gtk/archive/5.1.1.tar.gz
  ref: 32e8a0365e51e1a6317c48966f3b028c7fb7596be0d6b7588b5b152eb280009e

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

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
