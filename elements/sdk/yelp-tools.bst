kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/3.32/yelp-tools-3.32.2.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
