kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/40/yelp-xsl-40.rc.tar.xz
  ref: 20baffdd8ed52051937e7c409964f7e192b38fc92546b7f7295eec8e9a88d8f2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
