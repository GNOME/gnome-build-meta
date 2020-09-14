kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.38/yelp-xsl-3.38.0.tar.xz
  ref: 13bcc2011c4c55384174d18c7b2f0015a96b04efd24f3f646af2e7167e7ab0d7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
