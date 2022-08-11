kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/42/yelp-xsl-42.0.tar.xz
  ref: 29b273cc0bd16efb6e983443803f1e9fdc03511e5c4ff6348fd30a604d4dc846
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
