kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.36/yelp-xsl-3.36.0.tar.xz
  ref: 4fe51c0233b79a4c204c68498d45f09b342c30ed02c4e418506c0e35f0904ec3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
