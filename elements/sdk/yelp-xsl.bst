kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/3.33/yelp-xsl-3.33.92.tar.xz
depends:
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
