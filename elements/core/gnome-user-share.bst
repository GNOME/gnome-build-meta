kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-share/3.32/gnome-user-share-3.32.0.1.tar.xz
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
