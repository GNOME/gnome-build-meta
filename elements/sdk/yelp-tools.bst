kind: meson
sources:
- kind: tar
  url: gnome_downloads:yelp-tools/42/yelp-tools-42.beta.tar.xz
  ref: 74990b2932a150e1ec28de902e2646aa58ba5650aed7c979d68ae2721b693ad9
build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
