kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.36/yelp-xsl-3.36.1.tar.xz
  ref: cf6b4dc7f42d788e59f4faefc7531abf77e0a958252c98fa2f58c75720922303
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
