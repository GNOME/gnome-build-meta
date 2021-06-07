kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/40/yelp-xsl-40.2.tar.xz
  ref: 919c552f846aaec741fe51d5af416b469bcdb25c77effc3b5a15a4b4b7ff814e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
