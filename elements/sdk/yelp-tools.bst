kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/41/yelp-tools-41.beta.tar.xz
  ref: f509a0e86a000501fd6aebcdfd8997ab9e34805905edb8b1569369c08b2bdf1a
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
