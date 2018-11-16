kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/zenity/3.30/zenity-3.30.0.tar.xz
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
