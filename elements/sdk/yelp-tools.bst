kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/3.38/yelp-tools-3.38.0.tar.xz
  ref: 607ce4b3ee8517c42db924a01a78660a03317595c75825731ea86a920e2b04b0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
