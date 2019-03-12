kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-xsl/3.32/yelp-xsl-3.32.0.tar.xz
depends:
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
