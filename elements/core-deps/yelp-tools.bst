kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-tools/3.28/yelp-tools-3.28.0.tar.xz
  ref: 82dbfeea2359dfef8ee92c7580c7f03768d12f9bf67d839f03a5e9b0686dc1ac
depends:
- core-deps/yelp-xsl.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
