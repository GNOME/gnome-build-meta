kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk-doc/1.28/gtk-doc-1.28.tar.xz
  ref: 911e29e302252c96128965ee1f4067d5431a88e00ad1023a8bc1d6b922af5715
depends:
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
