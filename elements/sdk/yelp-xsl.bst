kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.38/yelp-xsl-3.38.3.tar.xz
  ref: 193b6abd4697b7b421e98c36d4d3135da0b0fdb51aa53e602ed368dd84d1fd03
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
