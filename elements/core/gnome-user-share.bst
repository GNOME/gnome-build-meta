kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-user-share/3.34/gnome-user-share-3.34.0.tar.xz
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
