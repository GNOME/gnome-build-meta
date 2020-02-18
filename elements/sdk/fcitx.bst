kind: cmake
sources:
- kind: tar
  url: https://gitlab.com/fcitx/fcitx/-/archive/4.2.9.6/fcitx-4.2.9.6.tar.gz
  ref: 69f00cc4395da2dc9eb446266ee8bf30fa9a741a3022859dd6b1077840b3c6ff
depends:
- sdk/gtk+-3.bst
- filename: components/extra-cmake-modules.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONFDIR=%{sysconfdir}
    -DENABLE_QT=Off
    -DENABLE_PINYIN=Off
    -DENABLE_TABLE=Off
    -DENABLE_GIR=Off
    -DENABLE_GTK3_IM_MODULE=On
    -DENABLE_OPENCC=Off
    -DENABLE_CAIRO=Off
    -DENABLE_SPELL=Off
    -DENABLE_GTK2_IM_MODULE=Off
    -DENABLE_LIBXML2=Off
    -DENABLE_X11=Off
    -DENABLE_ENCHANT=Off
    -DENABLE_PRESAGE=Off
public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/libfcitx-core.so"
        - "%{libdir}/libfcitx-gclient.so"
        - "%{libdir}/libfcitx-config.so"
        - "%{libdir}/libfcitx-utils.so"
