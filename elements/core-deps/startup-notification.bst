kind: autotools
sources:
- kind: tar
  url: gnome_downloads:startup-notification/0.12/startup-notification-0.12.tar.xz
  ref: 4bd1363a2f3b3eb2c4f7fc33b4977bb9c12b4741206f05109b0ff2b3b30b6bc0
depends:
- filename: components/xcb-util.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
