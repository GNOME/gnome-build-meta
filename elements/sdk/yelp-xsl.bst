kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.38/yelp-xsl-3.38.2.tar.xz
  ref: 2c8472dc6c470145e8a01e5e7c8ceffe81eb2bd318f7282fdede9a3f975fb47b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
