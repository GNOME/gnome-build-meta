kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.37/yelp-xsl-3.37.90.tar.xz
  ref: e8ca9caf5729f8de50349fefa2f2a6680e049298b7ab849d4efe4983c43a94f4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
