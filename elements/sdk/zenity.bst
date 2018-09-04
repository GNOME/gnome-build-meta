kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/zenity/3.28/zenity-3.28.1.tar.xz
  ref: db179354721fb4e2d5c418e0dc41f09c831a6b2dd440e33f7743dfc266de8a6b
depends:
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
