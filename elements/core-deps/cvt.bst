kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xkbfile.bst
- freedesktop-sdk.bst:components/xorg-lib-xfont2.bst

depends:
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-xvfb
    --disable-xnest
    --disable-xwin
    --disable-libdrm
    --disable-glamor
    --disable-dri
    --disable-dri2
    --disable-dri3
    --disable-glx
    --disable-pciaccess
    --disable-int10-module

config:
  build-commands:
  - |
    make -C 'hw/xfree86/modes'

  install-commands:
  - |
    make -j1 -C 'hw/xfree86/utils/cvt' install-binPROGRAMS DESTDIR='%{install-root}'

sources:
- kind: tar
  url: https://www.x.org/archive/individual/xserver/xorg-server-1.20.11.tar.bz2
  ref: 914c796e3ffabe1af48071d40ccc85e92117c97a9082ed1df29e4d64e3c34c49
