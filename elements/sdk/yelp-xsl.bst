kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.38/yelp-xsl-3.38.1.tar.xz
  ref: b321563da6ab7fa8b989adaf1a91262059696316b4ddca2288fddcfed8dcdf67
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
