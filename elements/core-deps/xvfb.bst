kind: meson

sources:
- kind: tar
  url: freedesktop_files:xorg/xserver/-/archive/xorg-server-21.1.8/xserver-xorg-server-21.1.8.tar.bz2
  ref: 508ccfcb35c45fd9eb6037770ce559ccdbec411432d95c79f7424e504b452e49
- kind: git_repo
  url: fedora_rpms:xorg-x11-server.git
  ref: dd5395436b87a535ea27a644b004feeea949a4a1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xauth.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libtirpc.bst
- freedesktop-sdk.bst:components/libunwind.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-font-util.bst
- freedesktop-sdk.bst:components/xorg-lib-xdmcp.bst
- freedesktop-sdk.bst:components/xorg-lib-xfont2.bst

variables:
  meson-local: >-
    -Ddevel-docs=false
    -Ddocs=false
    -Dlibunwind=true
    -Dxorg=false
    -Dxnest=false
    -Dxvfb=true

config:
  install-commands:
    (>):
    # Remove overlaps with xwayland
    - rm '%{install-root}%{libdir}/xorg/protocol.txt'
    - rm '%{install-root}%{mandir}/man1/Xserver.1'

    - install -Dm755 xvfb-run.sh '%{install-root}%{bindir}/xvfb-run'
    - chmod +x '%{install-root}%{bindir}/xvfb-run'
