kind: cmake

sources:
- kind: tar
  url: github_files:fcitx/fcitx5-gtk/archive/5.1.0.tar.gz
  ref: b064d4be9d603583f1b5da8f809c28b0fa64d9c6a696fa318b64c47903f4fc4c

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
