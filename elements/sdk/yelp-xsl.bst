kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.36/yelp-xsl-3.36.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
