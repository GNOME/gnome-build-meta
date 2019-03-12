kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/yelp-tools/3.32/yelp-tools-3.32.0.tar.xz
depends:
- sdk/yelp-xsl.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
