kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/3.32/yelp-tools-3.32.2.tar.xz
depends:
- sdk/yelp-xsl.bst
- filename: components/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
