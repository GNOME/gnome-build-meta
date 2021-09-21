kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/41/yelp-xsl-41.0.tar.xz
  ref: c8cd64c093bbd8c5d5e47fd38864e90831b5f9cf7403530870206fa96636a4a5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
