kind: autotools
sources:
- kind: tar
  url: gnome_downloads:startup-notification/0.12/startup-notification-0.12.tar.xz
depends:
- filename: desktop/xcb-util.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
