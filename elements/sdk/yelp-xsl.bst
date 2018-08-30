kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-xsl/3.28/yelp-xsl-3.28.0.tar.xz
  ref: 8ccdf47b31acbdd26a7380b3bc6700742a7aff91a54dab279fd5ea8b43b53f93
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
