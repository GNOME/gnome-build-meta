kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk-doc/1.29/gtk-doc-1.29.tar.xz
  ref: 14578e002496567276d310a62c9ffd6c56ee8806ce5079ffb0b81c4111f586b1
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
