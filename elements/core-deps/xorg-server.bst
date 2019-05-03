kind: autotools
sources:
- kind: tar
  url: https://www.x.org/releases/individual/xserver/xorg-server-1.20.3.tar.bz2
depends:
- core-deps/xfont2.bst
- filename: desktop/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: desktop/pixman.bst
  junction: freedesktop-sdk.bst
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland-protocols.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: desktop/xorg-lib-pciaccess.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xkbfile.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xshmfence.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-proto-xorgproto.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local:
    --enable-xorg
    --enable-xwayland
