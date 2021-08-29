kind: meson

sources:
- kind: git_tag
  url: github_com:swaywm/wlroots
  track: master
  ref: v0.13.0-0-g69c71dbc8afecc5da5c800cdc1475185064b4ac4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libinput.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/xcb-util-renderutil.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- freedesktop-sdk.bst:components/xwayland.bst

variables:
  meson-local: >-
    -Dlibseat=disabled
    -Dlogind=enabled
    -Dlogind-provider=systemd
    -Dxcb-errors=disabled
