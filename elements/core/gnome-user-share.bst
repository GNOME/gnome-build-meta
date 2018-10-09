kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-share/3.28/gnome-user-share-3.28.0.tar.xz
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
