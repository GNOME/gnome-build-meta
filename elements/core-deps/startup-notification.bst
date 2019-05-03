kind: autotools
sources:
- kind: tar
  url: gnome_downloads:startup-notification/0.12/startup-notification-0.12.tar.xz
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
