kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.34/yelp-xsl-3.34.2.tar.xz
  ref: 0c3fe6146113df26fb1295901b1c7baed9f0fe67a87f4345e11543aefe7cb7ad
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
