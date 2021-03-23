kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/40/yelp-xsl-40.0.tar.xz
  ref: 361ecd4d33fccdb3bb08a687f60e5c3e909d2e9e3b022d844e049820d0cf62b0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
