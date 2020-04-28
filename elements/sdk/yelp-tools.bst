kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/3.32/yelp-tools-3.32.2.tar.xz
  ref: 183856b5ed0b0bb2c05dd1204af023946ed436943e35e789afb0295e5e71e8f9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
