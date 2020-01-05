kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.34/yelp-xsl-3.34.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
