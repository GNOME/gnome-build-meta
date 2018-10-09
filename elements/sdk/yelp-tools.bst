kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-tools/3.28/yelp-tools-3.28.0.tar.xz
depends:
- sdk/yelp-xsl.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
