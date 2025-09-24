kind: meson

sources:
- kind: git_repo
  url: freedesktop:xorg/xserver.git
  track: 'xorg-server-*'
  ref: xorg-server-21.1.18-0-g2403cd5352b2a60d045b7f53c3c30002eb877f57
- kind: git_repo
  url: fedora_rpms:xorg-x11-server.git
  ref: dd5395436b87a535ea27a644b004feeea949a4a1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xauth.bst
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
- freedesktop-sdk.bst:components/xorg-lib-xkbfile.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

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
