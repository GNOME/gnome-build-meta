kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/42/yelp-tools-42.0.tar.xz
  ref: 2cd43063ffa7262df15dd8d379aa3ea3999d42661f07563f4802daa1149f7df4
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
