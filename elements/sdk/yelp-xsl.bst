kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp-xsl/49/yelp-xsl-49.beta.tar.xz
  ref: ca1be4e63acc5f1d79a151427879fb0c000b2ca1d3272814e0b24f7bc07d993d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
