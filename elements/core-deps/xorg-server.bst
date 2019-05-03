kind: autotools
sources:
- kind: tar
  url: https://www.x.org/releases/individual/xserver/xorg-server-1.20.3.tar.bz2
depends:
- core-deps/xfont2.bst
- filename: components/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: components/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: components/pixman.bst
  junction: freedesktop-sdk.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland-protocols.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/xorg-lib-pciaccess.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xkbfile.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xshmfence.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-proto-xorgproto.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local:
    --enable-xorg
    --enable-xwayland
