kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtk-doc/1.29/gtk-doc-1.29.tar.xz
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
