kind: cmake

sources:
- kind: tar
  url: github_com:fcitx/fcitx/archive/4.2.9.8.tar.gz

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONFDIR=%{sysconfdir}
    -DENABLE_XKB=Off
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
    -DENABLE_XDG_AUTOSTART=Off

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/fcitx4-config'
        - "%{libdir}/libfcitx-core.so"
        - "%{libdir}/libfcitx-gclient.so"
        - "%{libdir}/libfcitx-config.so"
        - "%{libdir}/libfcitx-utils.so"
        - '%{datadir}/cmake'
        - '%{datadir}/cmake/**'

config:
  install-commands:
    (>):
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/fcitx-skin-installer.desktop"
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/fcitx-configtool.desktop"
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/fcitx.desktop"
