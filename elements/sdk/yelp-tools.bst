kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/3.37/yelp-tools-3.37.90.tar.xz
  ref: d0702589c8238a215954caca94a964b3a0d16466798a8c1d644dd66c2492f2bb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
