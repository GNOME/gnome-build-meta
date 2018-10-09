kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-xsl/3.30/yelp-xsl-3.30.1.tar.xz
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
