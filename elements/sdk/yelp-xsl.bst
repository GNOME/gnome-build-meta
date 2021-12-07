kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/41/yelp-xsl-41.1.tar.xz
  ref: 0d6db37ac2ef812483e0104703f1fa9cf032e9e0956a5f1c3afbcc23791f8a54
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
