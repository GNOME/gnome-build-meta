kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/3.32/yelp-tools-3.32.2.tar.xz
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
